from flask import Blueprint, render_template

# about blueprint definition
contact = Blueprint('contact', __name__, static_folder='static', static_url_path='/contact', template_folder='templates')


# Routes
@contact.route('/contact')
def contact_func():
    return render_template('contact.html')
