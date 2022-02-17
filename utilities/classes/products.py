from utilities.db.db_manager import dbManager

class choosenProducts:

    __total_price = None
    __user = None


    def __init__(self,total_price, user):

        __total_price = total_price
        __user = user


    def get_products_table(self):
        query = "SELECT * FROM products"
        return dbManager.fetch(query)

    def get_products_price(self, products_name):
        query = "SELECT price FROM products WHERE name = '%s'" % (products_name)
        result = dbManager.fetch(query)
        return result[0][0]