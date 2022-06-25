let default = () => {
  <div className={`w-full px-10 py-5 flex flex-col items-center`}>
    <div className={`max-w-5xl w-full prose dark:prose-invert`}> <Remix.Outlet /> </div>
  </div>
}
