import React from 'react'
import './iternary.css'
const Recommends = ({name}) => {
  return (
    <>
        <div className='recommendItems'style={{color:"white"}}>
            {name}
        </div>
    </>
  )
}

export default Recommends