from flask import Blueprint, render_template, request, session, redirect, url_for
from utilities.classes.workshops import wworkshops

# workshops blueprint definition
workshops = Blueprint('workshops', __name__, static_folder='static', static_url_path='/workshops',
                      template_folder='templates')

workshops_in = wworkshops('a', 'a', 0, 'a',0)


# Routes
@workshops.route('/workshops')
def index():
    workshops_t = workshops_in.get_workshops_table()

    return render_template('workshops.html', workshops_t=workshops_t)


@workshops.route('/workshops/add_to_cart', methods=['post'])
def add_cart():
    package_name = 'סדנא'
    price = int(request.form['price'])
    number = int( request.form['number'])
    tot_price = price*number
    package_desc = request.form['desc']
    package_1 = wworkshops(package_name, session['username'], tot_price, package_desc,number)
    package_1.insert_to_cart()
    return redirect(url_for('shoppingcart.index'))
