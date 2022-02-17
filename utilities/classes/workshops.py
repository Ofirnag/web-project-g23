from utilities.db.db_manager import dbManager


class wworkshops:
    __workshops_name = None
    __price = None
    __user = None
    __desc = None
    __number = None

    def __init__(self, workshops_name, user, price, desc, number):
        self.__workshops_name = workshops_name
        self.__user = user
        self.__price = price
        self.__desc = desc
        self.__number = number

    def insert_to_cart(self):
        query = "INSERT INTO cart(package_name, user,price,desce,number ) VALUES ('%s','%s','%s','%s','%s')" % (self.__workshops_name, self.__user, self.__price, self.__desc, self.__number)
        dbManager.commit(query)

    def get_workshops_table(self):
        query = "SELECT * FROM workshop"
        return dbManager.fetch(query)
