module Meta = {
  @module("@remix-run/react") @react.component
  external make: unit => React.element = "Meta"
}

module Links = {
  @module("@remix-run/react") @react.component
  external make: unit => React.element = "Links"
}

module Outlet = {
  @module("@remix-run/react") @react.component
  external make: (~context: 'a=?) => React.element = "Outlet"
}

module ScrollRestoration = {
  @module("@remix-run/react") @react.component
  external make: (~nonce: 'string=?) => React.element = "ScrollRestoration"
}

module Scripts = {
  @module("@remix-run/react") @react.component
  external make: unit => React.element = "Scripts"
}

module LiveReload = {
  @module("@remix-run/react") @react.component
  external make: (~port: int=?) => React.element = "LiveReload"
}

module RemixBrowser = {
  @module("@remix-run/react") @react.component
  external make: unit => React.element = "RemixBrowser"
}