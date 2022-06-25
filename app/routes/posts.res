let default = () => {
  <div className={`w-full py-7 flex flex-col items-center`}>
    <div className={`max-w-5xl w-full prose dark:prose-invert px-10`}> <Remix.Outlet /> </div>
  </div>
}
