import { useEffect, useState } from "react";
import ReactPlayer from "react-player";

export const VideoPlayer = ({url,title}) => {
    const [hasWindow, setHasWindow] = useState(false);
      useEffect(() => {
        if (typeof window !== "undefined") {
          setHasWindow(true);
        }
      }, []);
    return (
      <div>
        <p>{title}</p>
        <div >
          {
            hasWindow && <ReactPlayer src={url}
            width="100%" 
            height="100%"  />
        }
        </div>
      </div>
    )}