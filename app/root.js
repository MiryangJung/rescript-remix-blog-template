// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as React$1 from "@remix-run/react";

function meta(param) {
  return {
          title: "rescript remix blog example"
        };
}

function Root$default(Props) {
  return React.createElement("html", {
              lang: "ko"
            }, React.createElement("head", undefined, React.createElement("meta", {
                      charSet: "utf-8"
                    }), React.createElement("meta", {
                      content: "width=device-width,initial-scale=1",
                      name: "viewport"
                    }), React.createElement(React$1.Meta, {}), React.createElement(React$1.Links, {})), React.createElement("body", undefined, React.createElement(React$1.Outlet, {}), React.createElement(React$1.ScrollRestoration, {}), React.createElement(React$1.Scripts, {}), React.createElement(React$1.LiveReload, {})));
}

var $$default = Root$default;

export {
  meta ,
  $$default ,
  $$default as default,
  
}
/* react Not a pure module */
