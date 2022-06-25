module PostA = {
  @module("./posts/a.mdx") external attr: {..} = "attributes"
  @module("./posts/a.mdx") external name: string = "filename"
}

module PostB = {
  @module("./posts/b.mdx") external attr: {..} = "attributes"
  @module("./posts/b.mdx") external name: string = "filename"
}

let makeSlug = name => {
  name->Js.String2.replace(".mdx", "")
}

let loader = () => {
  Remix.json([
    {"attr": PostA.attr, "slug": makeSlug(PostA.name)},
    {"attr": PostB.attr, "slug": makeSlug(PostB.name)},
  ])
}

module Post = {
  @react.component
  let make = (~title, ~des, ~date, ~image, ~slug) => {
    <Remix.Link
      prefetch=#intent
      to={`/posts/${slug}`}
      className={`max-w-3xl w-full p-5 rounded-lg bg-neutral-800 my-3 flex flex-nowrap items-center justify-between cursor-pointer transition duration-500 ease-in-out border border-solid border-black hover:border-green-200`}>
      <div className={`flex flex-col flex-1 mr-2`}>
        <div className={`text-white text-2xl font-bold`}> {title->React.string} </div>
        <div className={`text-neutral-300 text-base font-extralight pb-2`}>
          {des->React.string}
        </div>
        <div className={`text-neutral-600 text-xs font-medium`}> {date->React.string} </div>
      </div>
      <img className={`rounded w-24 h-24 object-cover`} src=image />
    </Remix.Link>
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
          key={post["slug"]}
          title={post["attr"]["meta"]["title"]}
          des={post["attr"]["meta"]["description"]}
          date={post["attr"]["meta"]["date"]}
          image={post["attr"]["meta"]["thumbnail"]}
          slug={post["slug"]}
        />
      })
      ->React.array}
    </div>
  </>
}
