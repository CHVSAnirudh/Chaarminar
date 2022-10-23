import React from 'react'
import '../style/Home.css'
import NavBar from './NavBar'
import { useHistory } from "react-router-dom";
import ReactPlayer from 'react-player';
const Video = () => {
    const history = useHistory();
    const videoSrc = localStorage.getItem('videoSrc');
    // console.log(videoSrc)
    if (videoSrc == null) {
        history.push("/location");
    }
    return (
        <>
            <ReactPlayer controls url={videoSrc} />
        </>
    )
}

export default Video