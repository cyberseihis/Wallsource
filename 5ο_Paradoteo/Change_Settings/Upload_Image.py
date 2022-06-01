from tkinter import *

winow =Tk()
window.title('Add Image')
window = Canvas (window , width = 450 , height = 450)
window.pack()
image = PhotoImage(file = 'C:\\Users\\Vasilis\\Pictures\\Saved Pictures\\Kid.PNG')
window.create_image(0,0, anchor = NW , image = image)

window.mainloop()