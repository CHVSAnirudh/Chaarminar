import os
import glob
import moviepy.editor as mpe
import moviepy.video.io.ImageSequenceClip
THIS_FILE = os.path.dirname(os.path.abspath(__file__))
PROJ_FILE = os.path.abspath(os.path.join(THIS_FILE,"../"))
class VideoGen():
    def __init__(self,job_id,mood) -> None:
        self.job_id = job_id
        self.mood = mood
        self.create_video()
        self.final_path = ''
    def create_video(self):
        images_path = PROJ_FILE + "/images/{}/*.jpg".format(self.job_id)
        jpgFilenamesList = glob.glob(images_path)
        movie_clip = moviepy.video.io.ImageSequenceClip.ImageSequenceClip(jpgFilenamesList, 1)
        movie_path = PROJ_FILE + "/images/{}/movie.mp4".format(self.job_id)
        movie_clip.write_videofile(movie_path)
        self.add_audio(movie_path,len(jpgFilenamesList))
    
    def add_audio(self,movie_path,length):
        audio_path = PROJ_FILE + "/music/{}.mp3".format(self.mood)
        self.final_path = '/home/anirudh/Desktop/Chaarminar/frontend/public/full_video.mp4'
        audio = mpe.AudioFileClip(audio_path)
        audio = audio.subclip(0,length)
        video1 = mpe.VideoFileClip(movie_path)
        final = video1.set_audio(audio)
        final.write_videofile(self.final_path)

    def get_video(self):
        return self.final_path

#VideoGen("arka","happy")