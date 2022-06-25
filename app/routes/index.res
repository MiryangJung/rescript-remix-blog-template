module Header = {
  @react.component
  let make = () => {
    <div className={`text-red-500`}> {`BLOG NAME`->React.string} </div>
  }
}

@react.component
let default = () => {
  <> <Header /> </>
}
