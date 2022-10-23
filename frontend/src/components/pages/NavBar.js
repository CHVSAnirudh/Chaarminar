import React from 'react'
import Emotion from './../images/emoticons.png'
import Home from './../images/home.png'
import Location from './../images/location.png'
import Music from './../images/music.png'
import Random from './../images/random.png'
import { Link } from "react-router-dom";
import './../style/NavBar.css'


const NavBar = () => {
  return (
    <>
        <div className='navContainer'>
            <div className='items'>
                <Link to="/Home">
                    <div className="navbarItem">
                    <img src={Home} alt="" />
                    {/* Home */}
                    </div>
                </Link>
                <Link to="/Home/homePage">
                    <div className="navbarItem">
                    <img src={Location} alt="" />
                    {/* Location */}
                    </div>
                </Link>
                <Link to="/Home/homePage">
                    <div className="navbarItem">
                    <img src={Music} alt="" />
                    {/* Music */}
                    </div>
                </Link>
                <Link to="/Home/homePage">
                    <div className="navbarItem">
                    <img src={Emotion} alt="" />
                    {/* Emotion */}
                    </div>
                </Link>
                <Link to="/Home/homePage">
                    <div className="navbarItem">
                    <img src={Random} alt="" />
                    {/* Random */}
                    </div>
                </Link>
            </div>
        </div>
    </>
  )
}

export default NavBar