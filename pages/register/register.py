import time

from flask import Blueprint, render_template, request, redirect, flash, url_for, session
from utilities.classes.user import User

# register blueprint definition
register = Blueprint('register', __name__, static_folder='static', static_url_path='/register',
                     template_folder='templates')


# Routes
@register.route('/register')
def index():
    return render_template('register.html')


@register.route('/insert_user', methods=['POST'])
def register_func():
    user = User('first_name', 'last_name', 'email', 'password', 'user_name', 'address')
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    username = request.form['username']
    email = request.form['email']
    psw = request.form['psw']
    address = request.form['address']
    user_email = user.get_email(email)
    if user_email:
        user = User(first_name, last_name, email, psw, username, address)
        user.insert_user()
        flash('הרשמה בוצעה בהצלחה')
        session['username'] = username
        #session['user_inside'] = True
        return redirect(url_for('home.index'))
    else:
        flash(' משתמש עם מייל זה קיים באתר, נסה שוב ')
        return render_template('register.html')
