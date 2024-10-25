type arrowButtonProps = [#right| #left]

module Style = {
  open Emotion

  let button = css({
      "borderRadius": "50%",
      "border": "none",
      "display": "flex",
      "justifyContent": "center",
      "alignItems": "center",
      "zIndex": "3",
      "width": "48px",
      "height": "48px",
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
