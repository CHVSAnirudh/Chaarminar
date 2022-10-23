import requests
import base64
import os
from PIL import Image,ImageDraw,ImageFont
THIS_FILE = os.path.dirname(os.path.abspath(__file__))
PROJ_FILE = os.path.abspath(os.path.join(THIS_FILE,"../"))
class GetImage:
    def __init__(self,job_id,ref_id,name) -> None:
        self.ref_id = ref_id
        self.name = name
        self.job_id = job_id
        self.get_image()
    def get_image(self):
        url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference={}&key=AIzaSyBRCBv1g2bhMCxviR1JYWYicWIfHyQMVCQ".format(self.ref_id)
        response = requests.request("GET",url)
        try:
            path = PROJ_FILE + "/images/{}/{}.jpg".format(self.job_id,self.name)
            f = open(path,"wb")
            for chunk in response:
                f.write(chunk)
            f.close()
        except:
            path = PROJ_FILE + "/images/{}".format(self.job_id)
            os.mkdir(path)
            path = PROJ_FILE + "/images/{}/{}.jpg".format(self.job_id,self.name)
            f = open(path,"wb")
            for chunk in response:
                f.write(chunk)
            f.close()
        self.add_background(path)
    
    def add_background(self,path):
        lpath = [x for x in path.split('/')]
        name = lpath[-1][:-4]
        bg_path = PROJ_FILE + "/images/bg.png" 
        bg_img = Image.open(bg_path).convert('RGB')
        ht = bg_img.height
        width = bg_img.width
        def generate():
            image = Image.open(path).convert('RGB')
            image = image.resize(((2*width//3) + 20, 2*ht//3))
            bg_img.paste(image,(120,120))
            I1 = ImageDraw.Draw(bg_img)
            #font = ImageFont.truetype('arial.ttf',45)
            I1.text(((width//2), 2*ht//3 + 200),name,font = font ,fill = 'rgb(254, 1 , 1)')
            bg_img.save(path)
        generate()
        
test = GetImage("job2","AcYSjRh6wf7hgpIuaUcS3aoQkwTasQqUVVh13068pfqjvk-r-K6xJ1CxXK85Agzp-krT8vOHDc38Fa8ADKIxNgrSjk1ypBanDe2P1DvdieUZq23UnMpX9_34gBCfZueVlUMcRRrIx8xjFSB7NpC1Cl-bst8UteEVC9ADDxMluZ29LfYWQOwV","panda")

