from flask import Blueprint, render_template, session, redirect, url_for, request, flash
from utilities.classes.user import User
from utilities.classes.order import order
from utilities.classes.package import package

# shoppingcart blueprint definition
shoppingcart = Blueprint('shoppingcart', __name__, static_folder='static', static_url_path='/shoppingcart',
                         template_folder='templates')

user = User('a', 'a', 'a', 'a', 'a', 'a')


# Routes
@shoppingcart.route('/shoppingcart', methods=['post', 'get'])
def index():
    success = "no"
    if session:
        cart = user.user_cart(session['username'])
        price = user.user_final_price(session['username'])
        if not price:
            price = 0
    else:
        price = 0
        cart = ""
    if request.method == 'POST':
        order2 = order('a', 'a', 'a', 'FALSE')
        order2.insert_to_order(session['username'])
        address = request.form['address']
        date = request.form['dateS']
        paid = 1
        order2.update_order_details(session['username'], address, date, paid)
        flash('(: הזמנתך בוצעה בהצלחה')
        success = "yes"
        package1 = package('a', 'a', 0, 'a')
        cart = package1.delete_from_cart(session['username'])
        price = 0
        return render_template('shoppingcart.html',  success=success, cart=cart, price=price)
    return render_template('shoppingcart.html', cart=cart, price=price,success=success)


@shoppingcart.route('/shoppingcart/<delete_cart>')
def delete(delete_cart):
    package_2 = package('a', 'a', 0,'a')
    package_2.delete_cart(delete_cart, session['username'])

    return redirect(url_for('shoppingcart.index'))




