module PostA = {
  @module("../posts/a.mdx") external attr: {..} = "attributes"
  @module("../posts/a.mdx") external name: {..} = "filename"
}

module PostB = {
  @module("../posts/b.mdx") external attr: {..} = "attributes"
  @module("../posts/b.mdx") external name: {..} = "filename"
}

let loader = () => {
  Remix.json([{"attr": PostA.attr, "name": PostA.name}, {"attr": PostB.attr, "name": PostB.name}])
}

module Post = {
  @react.component
  let make = (~title, ~des, ~date, ~image) => {
    <div
      className={`max-w-3xl w-full p-5 rounded-lg bg-neutral-800 my-3 flex flex-nowrap items-center justify-between`}>
      <div className={`flex flex-col flex-1 mr-2`}>
        <div className={`text-white text-2xl font-bold`}> {title->React.string} </div>
        <div className={`text-neutral-300 text-base font-extralight pb-2`}>
          {des->React.string}
        </div>
        <div className={`text-neutral-600 text-xs font-medium`}> {date->React.string} </div>
      </div>
      <img className={`rounded w-24 h-24 object-cover`} src=image />
    </div>
  }
}

@react.component
let default = () => {
  let posts = Remix.useLoaderData()

  <>
    <div className={`w-full flex py-5`}>
      <div className={`text-green-500 text-[15vw] font-black  m-auto`}>
        {`Res + Remix`->React.string}
      </div>
    </div>
    <div className={`w-full flex flex-col items-center px-5 mb-5`}>
      {posts
      ->Js.Array2.map(post => {
        <Post
          key={post["attr"]["meta"]["title"]}
          title={post["attr"]["meta"]["title"]}
          des={post["attr"]["meta"]["description"]}
          date={post["attr"]["meta"]["date"]}
          image={post["attr"]["meta"]["thumbnail"]}
        />
      })
      ->React.array}
    </div>
  </>
}
