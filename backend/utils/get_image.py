import requests
import base64
import os

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
        
test = GetImage("job2","AcYSjRh6wf7hgpIuaUcS3aoQkwTasQqUVVh13068pfqjvk-r-K6xJ1CxXK85Agzp-krT8vOHDc38Fa8ADKIxNgrSjk1ypBanDe2P1DvdieUZq23UnMpX9_34gBCfZueVlUMcRRrIx8xjFSB7NpC1Cl-bst8UteEVC9ADDxMluZ29LfYWQOwV","panda")

