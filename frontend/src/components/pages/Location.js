import React, { useRef, useState } from 'react'

import NavBar from './NavBar';
import './../style/Location.css'

import './../style/Home.css'
import {useEffect } from "react";
import Happy from './../images/happy.png'
import Sad from './../images/sad.png'
import Angry from './../images/angry.png'
import Neutral from './../images/thinking.png'
import Iternary from '../comps/Iternary';
import Recommends from '../comps/Recommends';


export default function Location() {
   return (
    <>
    
    <div className='viewContainer'>
        <div className='flex0'>
            <div className='flex'>
                <div className='inputFields'>
                    <label>Origin :</label>
                    <input/>
                    <label>Destination :</label>
                    <input/>
                </div>
                <div className='mapContainer'>   
            .</div>
        </div>
        <div className='outputContainer'>
            <div className='filter'>
                <ul>
                    <li> <img src={Happy} alt=""></img>
                        </li>
                        <li>
                        <img src={Sad} alt=""></img>
                            </li>
                            <li>
                            <img src={Angry} alt=""></img>
                                </li>
                                <li>
                                <img src={Neutral} alt=""></img></li>
                </ul>
                <select>
                    <option>One</option>
                    <option>Two</option>
                    <option>Three</option>
                </select>
                <input type="submit"/>
            </div>
            <div className='itineries'>
                <h2>Itineries</h2>
                <div className='iterItems'>
                    <Iternary/>
                    <Iternary/>
                    <Iternary/>
                </div>
                <hr></hr>

                <h2>Recomendations</h2>
                <div className='recommendations'>
                    <Recommends name="Gas Stations"/>
                    <Recommends name="Restaurants"/>
                    <Recommends name="Music"/>
                    <Recommends name="Tourist Spots"/>
                    <Recommends name="Music"/>
                    <Recommends name="Amusement Parks"/>
                </div>
            </div>
        </div>
        </div>
    
        <NavBar/>
        
     
    </div></>
   );
}
