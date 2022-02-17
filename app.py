from flask import Flask, session, render_template, redirect

###### App setup
app = Flask(__name__)
app.config.from_pyfile('settings.py')

## Page error handlers
from pages.page_error_handlers.page_error_handlers import page_error_handlers
app.register_blueprint(page_error_handlers)


###### Components
## Main menu
from components.main_menu.main_menu import main_menu
app.register_blueprint(main_menu)

## contact
from pages.contact.contact import contact
app.register_blueprint(contact)

## home
from pages.home.home import home
app.register_blueprint(home)

## login
from pages.login.login import login
app.register_blueprint(login)

## package
from pages.packages.packages import packages
app.register_blueprint(packages)

## register
from pages.register.register import register
app.register_blueprint(register)

## selfAssembly
from pages.selfAssembly.selfAssembly import selfAssembly
app.register_blueprint(selfAssembly)

## shoppingcart
from pages.shoppingcart.shoppingcart import shoppingcart
app.register_blueprint(shoppingcart)

## workshops
from pages.workshops.workshops import workshops
app.register_blueprint(workshops)

@app.route('/logout')
def logout_func():
    session.pop('username')

    return redirect("/")


