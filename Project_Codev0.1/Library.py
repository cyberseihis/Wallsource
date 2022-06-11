    def setLibraryName(self, LibraryName:str):
        self.LibraryName = LibraryName


    def __init__(self, wallpapers):
        self.wallpapers = wallpapers


    def addWallpaper(self, otherWall):
        return Weight(self.wallpaper + otherWall.wallpapers)


    def getWallpaper(self):
        return self.Wallpaper

    def getXrhsthsName(self, XrhsthsName:str):
        return self.XrhsthsName
  
    def getSulloghName(self, SulloghName:str):
        return self.SulloghName