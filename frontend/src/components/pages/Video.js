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
    if (videoSrc == null) {
        history.push("/location");
    }
    return (
        <video ref={videoRef} height="500px">
            <source src={videoSrc} />
        </video>
    )
}

export default Video