from dataclasses import dataclass
from Wallpaper import Wallpaper
from reaction import reaction
from comment import comment


@dataclass
class collection:

    name: str
    code: int
    amount: int
    _wallpapers: list[Wallpaper]
    _reactions: list[reaction]
    _comments: list[comment]

    def getCode(self):
        return self.code

    def setSulloghName(self, text: str):
        self.name = text

    def getAI(self):
        from AIgenerator import AIgenerator
        return AIgenerator(self.name, self.amount)

    def WallpaperName(self):
        return [w.name for w in self._wallpapers]

    def addAntidrash(self, antidrash):
        self._reactions.append(antidrash)

    def getAntidrash(self):
        return self._reactions[0]

    def addSxolio(self, sxolio):
        self._comments.append(sxolio)

    def getSxolio(self):
        return self._comments[0]
