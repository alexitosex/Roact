import './app.css';
import { TwitterFollowCard } from './TwitterFollowCard.jsx';
import React, { useState } from 'react';

export function App() {

  const [name, setName] = useState('JediZuzu')
  const [name2, setName2] = useState('Heidi ALejandra')

  return (
    
    <div className='App'>
      <TwitterFollowCard isFollowing={false} >Alexander</TwitterFollowCard>
      <TwitterFollowCard isFollowing={true} userName={name}>{name2}</TwitterFollowCard>
      <button onClick={() => {
         setName('Ale');
         setName2('Jedi Alejandra');}}>skip</button>
    </div>


    
  );
}
