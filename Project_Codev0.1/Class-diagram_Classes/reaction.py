from dataclasses import dataclass


@dataclass
class reaction:
    name: str

    def setName(self, text):
        self.name = text

    def remove(self):
        del self
