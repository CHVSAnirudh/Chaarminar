
import { VideoPlayer } from '../../app/comps/VideoPlayer';
import dynamic from 'next/dynamic'
import { Micbutton } from '../../app/comps/Micbutton';
export default function Home() {
    const ReactPlayer = dynamic(() => import("react-player"), { ssr: false });

    return (
        <>
        <Micbutton/>
            <ReactPlayer src={"/demo.mp4"}/>
        </>
    )
}
