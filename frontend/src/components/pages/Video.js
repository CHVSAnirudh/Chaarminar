import React, { useEffect, useRef } from 'react'
import '../style/Home.css'
import NavBar from './NavBar'
import { useHistory } from "react-router-dom";
import ReactPlayer from 'react-player';
const Video = () => {
    const videoRef = useRef();
    const history = useHistory();
    const videoSrc = localStorage.getItem('videoSrc');
    useEffect(() => {
        videoRef.current?.load();
    }, [videoSrc]);

    console.log(videoSrc)
    // if (videoSrc == null) {
    //     history.push("/location");
    // }
    return (
        <div className='viewContainer'>
            <div style={{ display: "flex", flexDirection: "row", alignItems: "center", justifyContent: "center" ,height:'100%'}}>

                <video autoPlay ref={videoRef} height="85%">
                    <source src={'full_video.mp4'} />
                </video>
            </div>
            <NavBar />

        </div>
    )
}

export default Video