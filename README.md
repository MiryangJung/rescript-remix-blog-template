# rescript-remix-blog-template
remix ReScript Blog Template

> [rescript-remix-blog-template.vercel.app](http://rescript-remix-blog-template.vercel.app/)

- [설치 및 실행](#설치-및-실행)
- [설계](#설계)
- [기능](#기능)
- [구현](#구현)
- [트러블 슈팅](#트러블-슈팅)

![home](/docs/home.png)

## 설치 및 실행

- 설치

```shell
yarn
```

- 실행

```shell
yarn res:dev
yarn dev
```

## 설계

### 목표

- `rescript` 와 `remix`를 사용해 **블로그** 만들기
- 템플릿으로 사용할 수 있도록 제작

### 사용

| -             | Link                                                            |
|---------------|-----------------------------------------------------------------|
| Lang          | [rescript](https://rescript-lang.org/)                          |
| Web Framework | [remix](https://remix.run/)                                     |
| Binding       | [rescript-remix](https://github.com/tom-sherman/rescript-remix) |
| CSS framework | [tailwind](https://tailwindcss.com/)                            |

### 공부 필요

- remix 사용법
  - [remix tutorials](https://remix.run/docs/en/v1/tutorials/blog)
- rescript-remix 사용법
  - [rescript-remix-template](https://github.com/tom-sherman/rescript-remix-template)

### 조사 필요

- remix 프로젝트 배포하는 방법
- remix에서 `mdx` 다루는 방법
- remix SEO 적용하는 방법

### 레이아웃

- 헤더
- 커버 이미지
- 글 목록
  - 글 제목, 내용, 작성자

![레이아웃](/docs/layout.jpeg)

## 기능

| 글 목록 | 글 보기 |
|---|---|
|![list](/docs/list.png) |![post](/docs/post.png) |

## 구현

### 파일별 역할

| 파일 | 역할 |
|---|---|
| `bindings/Remix.res` | remix 바인딩 |
| `routes/index.res` | `/` 페이지 및 mdx를 읽어 최근 글 목록 |
| `posts.res` | $posts Child routes 스타일링 |

## 트러블 슈팅

- remix-rescript 에서 `mdx` 파일 라우팅이 안됨.
  - [포럼에 질문](https://forum.rescript-lang.org/t/how-can-i-handle-mdx-in-rescript-remix/3218/2)
- 특정 폴더 내의 `.mdx` 리스트를 가져오는 방법을 모르겠음.
  - ```we suggest you rethink your strategy and turn your posts into data stored in a database so that you don't have to rebuild and redeploy your blog every time you fix a typo.```
  - remix에서는 DB 사용을 권장하고 있음.
  - 어떤 DB store를 사용할 지 고민 필요.
  - 근데 다시 생각해보니 DB에 데이터를 넣으려면 인증 부분이 들어가야해서 초기 기획과 맞지 않음.
  - 일단 이건 나중에 생각해보고 mdx를 로딩하는 거부터 해결하자.
    - **mdx 라우팅과 `<Outlet>` 으로 해결!**
- `LoaderFunction` 이 바인딩 안 되어있음.
  - 필요한 이유 : [mdx#example-blog-usage](https://remix.run/docs/en/v1.4.1/guides/mdx#example-blog-usage)
  - 바인딩 된 PR이 아직 머지가 안되어있음을 발견! [rescript-remix PR#21](https://github.com/tom-sherman/rescript-remix/pull/21)
  - 코멘트를 남겼으나 언제 확인할 지 모르므로 stuck 상태
- 바인딩을 직접 해보자
  - 바인딩을 어떻게 하는지 모르므로 공부해보기
  - [remix-rescript로 rescript 바인딩 알아보기](https://miryang.dev/blog/learn-about-remix-rescript-binding)
  
## 참고 소스

- [Add example app: jokes (Js.Json.t version)](https://github.com/tom-sherman/rescript-remix/pull/21)
