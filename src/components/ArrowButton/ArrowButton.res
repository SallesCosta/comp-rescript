type arrowButtonProps = [#right| #left]

module Style = {
  open Emotion

  let button = css({
      "borderRadius": "50%",
      "border": "none",
      "display": "flex",
      "justifyContent": "center",
      "alignItems": "center",
      "minWidth": "48px",
      "minHeight": "48px",
      "zIndex": "3",
      "cursor ": "pointer",
  })
}

@react.component
let make = (~dir:arrowButtonProps=#right) => {

<button className=Style.button>
  {switch dir {
    | #right => <img src="/images/slider-arrow-right.svg" alt="arrow right icon" />
    | #left => <img src="/images/slider-arrow-left.svg" alt="arrow left icon" />
    }
  }
  </button>
}
