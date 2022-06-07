from dataclasses import dataclass


@dataclass
class AIgenerator:
    name: str
    amount: str

    def setAIName(self, text):
        self.name = self.text
