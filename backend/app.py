from distutils.log import debug
from mimetypes import init
from urllib import request
from fastapi import FastAPI, File, UploadFile, Form
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse, FileResponse
from pydantic import BaseModel
import logging
import uvicorn
import shutil
import os   
from utils.find_places import FindPlaces
from utils.get_image import GetImage
from video_utils.video_gen import VideoGen
import uuid

logging.basicConfig(
    level=logging.INFO, format="[%(asctime)s] %(levelname)s: %(message)s"
)
logger = logging.getLogger(__name__)
logging.getLogger("pipeline").setLevel(logging.INFO)

app = FastAPI(title="Chaarminar", version="1.0.0")

#CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.post("/gen_video")
def gen_video(slat: float = Form(...),
            slong: float = Form(...),
            dlat: float = Form(...),
            dlong: float = Form(...),
            mood: str = Form(...),
            age: str = Form(...)):
    
    job_id = generate_job_id()
    
    # finding the nearby places in the route between point A to B
    find_places = FindPlaces(slat,slong,dlat,dlong,mood,age)
    
    ## getting the photos for all the places that we have in the itenery
    all_places = find_places.get_place()
    
    #scraping the photos
    for photo in all_places:
        scrap_image = GetImage(job_id,photo['photo_reference'],photo['name'])

    # generating the video
    video = VideoGen(job_id,mood)
    video_path = video.get_video()
    result = {}
    result['all_places'] = all_places
    result['path'] = video_path 
    return {'status': 200,'result':result}
    
@app.post("/get_video")
def get_video(path: str = Form(...)):
    return FileResponse(
        os.path.abspath(path),
        200,
        {
            "Content-Type": "video/mp4",
            "Content-Disposition": "attachment; filename=output.mp4",
        },
        media_type="video/mp4",
    )

@app.post("/temp")
def temp(slat: float = Form(...),
            slong: float = Form(...),
            dlat: float = Form(...),
            dlong: float = Form(...),
            mood: str = Form(...),
            age: str = Form(...)):
    return FileResponse(
        os.path.abspath("/home/anirudh/Desktop/Chaarminar/backend/images/arka/movie.mp4"),
        200,
        {
            "Content-Type": "video/mp4",
            "Content-Disposition": "attachment; filename=output.mp4",
        },
        media_type="video/mp4",
    )


def generate_job_id():
    try:
        logging.info("generating unique job id")
        id = uuid.uuid4().hex
        return id[::2][:10]
    except Exception as e:
        logging.error(e)
        logging.error("error generating unique job_id")


if __name__ == "__main__":
    uvicorn.run(
        app,
        port=5000,
        host="127.0.0.1",
    )


