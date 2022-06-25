let meta = () =>
  {
    "title": "rescript remix blog example",
  }

@react.component
let default = () =>
  <html lang="ko">
    <head>
      <meta charSet="utf-8" />
      <meta name="viewport" content="width=device-width,initial-scale=1" />
      /* All meta exports on all routes will go here */
      <Remix.Meta />
      /* All link exports on all routes will go here */
      <Remix.Links />
    </head>
    <body>
      /* Child routes go here */
      <Remix.Outlet />
      /* Manages scroll position for client-side transitions */
      <Remix.ScrollRestoration />
      /* Script tags go here */
      <Remix.Scripts />
      /* Sets up automatic reload when you change code */
      <Remix.LiveReload />
    </body>
  </html>
