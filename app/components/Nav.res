@react.component
let make = () => {
  <div className={`w-full`}>
    <nav className={`max-w-5xl p-5 flex items-center justify-between m-auto text-white`}>
      <Remix.Link prefetch=#none to=`/`>
        <span className={`font-bold text-xl`}> {`BLOG`->React.string} </span>
      </Remix.Link>
      <ul className={`flex`}>
        <li className={`text-neutral-400 px-2`}> {`menu1`->React.string} </li>
        <li className={`text-neutral-400 px-2`}> {`menu2`->React.string} </li>
        <li className={`text-neutral-400 px-2`}> {`menu3`->React.string} </li>
      </ul>
    </nav>
  </div>
}
