import { useState } from "react"

export function TwitterFollowCard({children, userName = 'Unknown'}){
   const [isFollowing, setIsFollowing] = useState(false)
   
    const imageSrc = `https://unavatar.io/${userName}`
    const text = isFollowing ? 'siguiendo' : 'seguir'
    const buttonClassName = isFollowing
    ? 'tw-followCard-button is-following'
    : 'tw-followCard-button'

    const click = () => {
        setIsFollowing(!isFollowing)
    }
    return (
        <article className="tw-followCard" >
         <header className="tw-followCard-header">
         <img
         className="tw-followCard-avatar"
         src={imageSrc} alt="midu" />
         <div className="tw-followCard-info">
          <strong>{children}</strong>
          <span className="infoUserName">@{userName}</span>
         </div>
         </header>
  
          <aside>
          <button onClick={click} className={buttonClassName}>{text}  </button>
          </aside>
  
        </article>
      )
}