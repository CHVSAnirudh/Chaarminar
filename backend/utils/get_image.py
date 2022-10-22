import requests
import base64
class GetImage:
    def __init__(self,ref_id,name) -> None:
        self.ref_id = ref_id
        self.name = name
        self.get_image(ref_id,name)
    def get_image(self,ref_id,name):
        url = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference={}&key=AIzaSyBRCBv1g2bhMCxviR1JYWYicWIfHyQMVCQ".format(ref_id)
        response = requests.request("GET",url)
        f = open("{}.jpg".format(name),"wb")
        for chunk in response:
            f.write(chunk)
        f.close()
#test = GetImage("AcYSjRh6wf7hgpIuaUcS3aoQkwTasQqUVVh13068pfqjvk-r-K6xJ1CxXK85Agzp-krT8vOHDc38Fa8ADKIxNgrSjk1ypBanDe2P1DvdieUZq23UnMpX9_34gBCfZueVlUMcRRrIx8xjFSB7NpC1Cl-bst8UteEVC9ADDxMluZ29LfYWQOwV","arka")

