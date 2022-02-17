from utilities.db.db_manager import dbManager


class package:
    __package_name = None
    __price = None
    __photo = None
    __hebrew_name = None
    __user = None
    __desc = None

    def __init__(self, package_name, user, price, desc):
        self.__package_name = package_name
        self.__user = user
        self.__price = price
        self.__desc = desc

    def insert_to_cart(self):
        query = "INSERT INTO cart(package_name, user,price,desce) VALUES ('%s','%s','%s','%s')" % (
        self.__package_name, self.__user, self.__price, self.__desc)
        dbManager.commit(query)

    def delete_from_cart(self, user):

        query3 = "DELETE FROM cart WHERE user = '%s';" % user
        dbManager.commit(query3)

    def delete_cart(self, package_delete, user):

        query2 = "DELETE FROM cart WHERE (serial_number , user)  = ('%s', '%s');" % (package_delete, user)

        dbManager.commit(query2)

    def get_packages_table(self):
        query = "SELECT * FROM package"
        return dbManager.fetch(query)
