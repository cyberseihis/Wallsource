class Sub_VIP:

    def __init__(self, name):
        self.name = name

    def __get__(self, name ):
        return self.name
    
    def __get__(self, code):
        return self.code