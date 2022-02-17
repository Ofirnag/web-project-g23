from flask import Blueprint, render_template, request, session, redirect, url_for, flash
from utilities.classes.user import User

# login blueprint definition
login = Blueprint('login', __name__, static_folder='static', static_url_path='/login', template_folder='templates')



# Routes
@login.route('/login', methods=['GET', 'POST'])
def login_fun():
    if request.method == 'GET':
        return render_template('login.html')

    if request.method == 'POST':
        username = request.form['uname']
        password = request.form['psw']
        user = User('a', 'a', 'a', 'a', 'a', 'a')  # no need to create new user
        email = user.get_name(username, password)


        if email != "":
            session['username'] = username
            #session['user_inside'] = True
            return redirect(url_for('home.index'))
        else:
            flash('אחד הפרטים שגויים, נסה שוב')
            return render_template('login.html')
