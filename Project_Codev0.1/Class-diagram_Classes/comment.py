class comment:
    text: str

    def __init__(self, text: str):
        self.text = text

    def setSxolio(self, text: str):
        self.text = text

    def remove(self):
        del self
