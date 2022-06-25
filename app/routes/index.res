module Header = {
  @react.component
  let make = () => {
    <> {`BLOG NAME`->React.string} </>
  }
}

@react.component
let default = () => {
  <> <Header /> </>
}
