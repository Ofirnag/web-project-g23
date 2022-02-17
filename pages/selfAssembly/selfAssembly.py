from flask import Blueprint, render_template, request, session, redirect, url_for
from utilities.classes.products import choosenProducts
from utilities.classes.package import package
# selfAssembly blueprint definition
selfAssembly = Blueprint('selfAssembly', __name__, static_folder='static', static_url_path='/selfAssembly', template_folder='templates')

Products=choosenProducts('a','a')
# Routes
@selfAssembly.route('/selfAssembly',methods=['GET', 'POST'])
def index():
    Products_t= Products.get_products_table()
    return render_template('selfAssembly.html',Products_t=Products_t)

@selfAssembly.route('/selfAssembly/add_to_cart', methods=['post'])
def add_cart():
    package_price = request.form['price']
    package_desc = request.form['desc']
    if package_price:
        package_1 = package('selfassembly', session['username'], package_price,package_desc)
        package_1.insert_to_cart()
    return redirect(url_for('shoppingcart.index'))
