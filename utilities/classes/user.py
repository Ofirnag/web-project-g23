from utilities.db.db_manager import dbManager


class User:
    __first_name = None
    __last_name = None
    __email = None
    __password = None
    __user_name = None
    __address = None


    def __init__(self,first_name, last_name,email,password,user_name,address):
        self.__first_name = first_name
        self.__last_name = last_name
        self.__email = email
        self.__password = password
        self.__user_name = user_name
        self.__address = address

    def insert_user(self):
        query = "INSERT INTO users(first_name,last_name, email, password,user_name,address) VALUES ('%s','%s','%s', '%s', '%s', '%s')" % (self.__first_name, self.__last_name, self.__email
                                                                                                                 , self.__password,self.__user_name,self.__address)
        dbManager.commit(query)

    def get_name(self, username, password):
        query = "SELECT email, password FROM users WHERE user_name = '%s'" % (username)
        result = dbManager.fetch(query)
        print(result)
        if result:
            if password == result[0][1]:
                return result[0][0]
            else:
                return ""
        else:
            return ""

    def get_email(self, email):
        query = "SELECT email FROM users WHERE email = '%s'" % (email)
        result = dbManager.fetch(query)
        if result:
            return False
        else:
            return True

    def user_cart(self, user):
        query = "SELECT c.serial_number ,p.package_name, c.price , p.hebrew_name, p.photo, c.desce FROM  cart c join package p on c.package_name = p.package_name  WHERE user = '%s'" %(user)
        cart = dbManager.fetch(query)
        return cart


    def user_final_price(self, user):
        query = "SELECT  SUM(c.price) as total_price FROM cart c join package p on c.package_name = p.package_name  WHERE user = '%s'" %(user)
        price = dbManager.fetch(query)
        return price[0][0]