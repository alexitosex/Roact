import './app.css';
import { TwitterFollowCard } from './TwitterFollowCard.jsx';
import React, { useState } from 'react';

export function App() {

  const [name, setName] = useState('JediZuzu')
  const [name2, setName2] = useState('Heidi ALejandra')

  return (
    
    <div className='App'>
      <TwitterFollowCard initialIsFollowing={false} >Alexander</TwitterFollowCard>
      <TwitterFollowCard initialIsFollowing={true} userName='JediLuca'>Heidi Alejandra</TwitterFollowCard>
      
    </div>


    
  );
}
