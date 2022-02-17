from flask import Blueprint, render_template, request, session, redirect, url_for
from utilities.classes.package import package

# packages blueprint definition
packages = Blueprint('packages', __name__, static_folder='static', static_url_path='/packages',
                     template_folder='templates')

packages_in = package('a', 'a', 0,'a')


# Routes
@packages.route('/packages')
def index():
    packages_t = packages_in.get_packages_table()
    return render_template('packages.html', packages_t=packages_t)


@packages.route('/packages/add_to_cart', methods=['post'])
def add_cart():
    package_name = request.form['order']
    package_price = request.form['price']
    package_desc = request.form['desc']
    package_1 = package(package_name, session['username'], package_price,package_desc)
    package_1.insert_to_cart()
    return redirect(url_for('shoppingcart.index'))
