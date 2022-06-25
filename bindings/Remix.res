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

module Link = {
  @module("@remix-run/react") @react.component
  external make: (
    ~prefetch: [#intent | #render | #none]=?,
    ~to: string,
    ~reloadDocument: bool=?,
    ~replace: bool=?,
    ~state: 'a=?,
    ~children: React.element,
    ~className: string=?,
  ) => React.element = "Link"
}

@module("@remix-run/node") external json: 'a => Webapi.Fetch.Response.t = "json"

@module("@remix-run/react") external useLoaderData: unit => 'a = "useLoaderData"
