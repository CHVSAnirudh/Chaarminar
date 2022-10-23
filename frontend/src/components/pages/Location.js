import React, { useRef, useState } from 'react'

import NavBar from './NavBar';
import './../style/Location.css'
import { Search, GpsFixed } from "@material-ui/icons"
import './../style/Home.css'
import {useEffect } from "react";
import Happy from './../images/happy.png'
import Sad from './../images/sad.png'
import Angry from './../images/angry.png'
import Neutral from './../images/thinking.png'
import Iternary from '../comps/Iternary';
import Recommends from '../comps/Recommends';

const apiKey = process.env.REACT_APP_GOOGLE_MAPS_API_KEY;
const mapApiJs = 'https://maps.googleapis.com/maps/api/js';
const geocodeJson = 'https://maps.googleapis.com/maps/api/geocode/json';


// load google map api js

function loadAsyncScript(src) {
  return new Promise(resolve => {
    const script = document.createElement("script");
    Object.assign(script, {
      type: "text/javascript",
      async: true,
      src
    })
    script.addEventListener("load", () => resolve(script));
    document.head.appendChild(script);
  })
}

const extractAddress = (place) => {

  const address = {
    city: "",
    state: "",
    zip: "",
    country: "",
    plain() {
      const city = this.city ? this.city + ", " : "";
      const zip = this.zip ? this.zip + ", " : "";
      const state = this.state ? this.state + ", " : "";
      return city + zip + state + this.country;
    }
  }

  if (!Array.isArray(place?.address_components)) {
    return address;
  }

  place.address_components.forEach(component => {
    const types = component.types;
    const value = component.long_name;

    if (types.includes("locality")) {
      address.city = value;
    }

    if (types.includes("administrative_area_level_2")) {
      address.state = value;
    }

    if (types.includes("postal_code")) {
      address.zip = value;
    }

    if (types.includes("country")) {
      address.country = value;
    }

  });

  return address;
}



export default function Location() {
    const searchInput = useRef(null);
  const [address, setAddress] = useState({});


  // init gmap script
  const initMapScript = () => {
    // if script already loaded
    if(window.google) {
      return Promise.resolve();
    }
    const src = `${mapApiJs}?key=${apiKey}&libraries=places&v=weekly`;
    return loadAsyncScript(src);
  }

  // do something on address change
  const onChangeAddress = (autocomplete) => {
    const place = autocomplete.getPlace();
    setAddress(extractAddress(place));
  }

  // init autocomplete
  const initAutocomplete = () => {
    if (!searchInput.current) return;

    const autocomplete = new window.google.maps.places.Autocomplete(searchInput.current);
    autocomplete.setFields(["address_component", "geometry"]);
    autocomplete.addListener("place_changed", () => onChangeAddress(autocomplete));

  }


  const reverseGeocode = ({ latitude: lat, longitude: lng}) => {
    const url = `${geocodeJson}?key=${apiKey}&latlng=${lat},${lng}`;
    searchInput.current.value = "Getting your location...";
    fetch(url)
        .then(response => response.json())
        .then(location => {
          const place = location.results[0];
          const _address = extractAddress(place);
          setAddress(_address);
          searchInput.current.value = _address.plain();
        })
  }


  const findMyLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(position => {
        reverseGeocode(position.coords)
      })
    }
  }





  // load map script after mounted
  useEffect(() => {
    initMapScript().then(() => initAutocomplete())
  }, []);




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
    

        <div className="App">
      <div>
        <div className="search">
          <span><Search /></span>
          <input ref={searchInput} type="text" placeholder="Search location...."/>
          <button onClick={findMyLocation}><GpsFixed /></button>
        </div>

        <div className="address">
          <p>City: <span>{address.city}</span></p>
          <p>State: <span>{address.state}</span></p>
          <p>Zip: <span>{address.zip}</span></p>
          <p>Country: <span>{address.country}</span></p>
        </div>

      </div>
    </div>
        <NavBar/>
        
     
    </div></>
   );
}
