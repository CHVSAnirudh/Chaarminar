import { useEffect, useState } from "react";
import { BsFillMicFill } from "react-icons/bs"
// import RecordRTC, { invokeSaveAsDialog } from 'recordrtc';

let gumStream = null;
let recorder = null;
let audioContext = null;

export const Micbutton = () => {
    const [clicked, setClicked] = useState(false);
    const startRecording = () => {
        let constraints = {
            audio: true,
            video: false
        }

        audioContext = new window.AudioContext();
        navigator.mediaDevices
            .getUserMedia(constraints)
            .then(function (stream) {
                console.log("initializing Recorder.js ...");

                gumStream = stream;

                let input = audioContext.createMediaStreamSource(stream);

                recorder = RecordRTC(input, {

                    numChannels: 1
                })

                recorder.record();
                console.log("Recording started");
            })
    }

    const stopRecording = () => {
        console.log("audio recording stopped");

        recorder.stop();
        gumStream.getAudioTracks()[0].stop();

        recorder.exportWAV(onStop);
    }

    const onStop = (blob) => {
        console.log("uploading...");

        let data = new FormData();

        data.append('text', "this is the transcription of the audio file");
        data.append('wavfile', blob, "recording.wav");

        const config = {
            headers: {'content-type': 'multipart/form-data'}
        }
        axios.post('http://localhost:5000/audio/', data, config);
    }
    const handleMicClick=()=>{
        // if(!clicked)startRecording();
        // else stopRecording();
        setClicked(!clicked);
    }
    return (
        <div class="box" onClick={()=>handleMicClick()}>
            <div class="object">
                {clicked && <>
                    <div class="outline">
                    </div>
                    <div class="outline" id="delayed">
                    </div>
                    <div class="button">
                    </div>
                </>}
                <div class="button" id="circlein">
                    <BsFillMicFill size={"44px"} />
                </div>
            </div>
        </div>
    )
}