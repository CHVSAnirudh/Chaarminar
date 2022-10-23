import React from 'react'
import Happy from './../images/happy.png'
function Music() {
  return (
    <>
      <div className='mood'>
        Current Mood:
        <img src={Happy}></img>
      </div>
    </>
  )
}

export default Music