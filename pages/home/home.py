from flask import Blueprint, render_template

# about blueprint definition
home = Blueprint('home', __name__, static_folder='static', static_url_path='/home', template_folder='templates')


# להוסיףף route ריק
# Routes
@home.route('/')
@home.route('/home')
def index():
    return render_template('home.html')
