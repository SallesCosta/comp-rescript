type size = [#md | #lg]
type variant = [#primary | #secondary]

module Styles = {
  let button = (~size: size, ~variant: variant) => {
    let transition = `250ms background-color, 150ms box-shadow`

    let backgroundColor = switch variant {
    | #primary => Theme.Colors.buttonWhite
    | #secondary => "transparent"
    }

    let backgroundColorHover = switch variant {
    | #primary => Theme.Colors.primaryBgHover
    | #secondary => Theme.Colors.secondaryBgHover
    }

    let border = switch variant {
    | #primary => "none"
    | #secondary => `1px solid ${Theme.Colors.white}`
    }

    let color = switch variant {
    | #primary => Theme.Colors.black
    | #secondary => Theme.Colors.white
    }

    let padding = switch size {
    | #md => "6px 16px"
    | #lg => "8px 20px"
    }

    let lineHeight = switch size {
    | #md => "2.1rem"
    | #lg => "2.3rem"
    }

    let fontSize = switch size {
    | #md => "1.2rem"
    | #lg => "1.6rem"
    }

    let height = switch size {
    | #md => "32px"
    | #lg => "40px"
    }

    Emotion.css({
      "alignItems": "center",
      "backgroundColor": backgroundColor,
      "backgroundRepeat": "no-repeat",
      "border": border,
      "borderRadius": "2em",
      "boxSizing": "border-box",
      "color": color,
      "cursor": "pointer",
      "display": "inline-flex",
      "fontSize": fontSize,
      "fontFamily": Theme.Constants.fontFamily,
      "fontWeight": 400,
      "height": height,
      "justifyContent": "center",
      "lineHeight": lineHeight,
      "letterSpacing": "-0.055em",
      "outlineOffset": "2px",
      "padding": padding,
      "transition": transition,
      "textTransform": "lowercase",
      "textDecoration": "none",
      "userSelect": "none",
      "whitSpace": "nowrap",
      "willChange": "background-color",
      "&:hover": {
        "transition": transition,
        "backgroundColor": backgroundColorHover,
      },
      "&:disabled": {
        "opacity": 0.3,
        "cursor": "not-allowed",
      },
      "&:focus": {
        "boxShadow": `0px 0px 0px 2px ${Theme.Colors.gray5}`,
        "transition": transition,
      },
    })
  }
}

@react.component
let make = (
  ~label,
  ~loading=false,
  ~onClick=?,
  ~disabled=false,
  ~size: size=#lg,
  ~variant: variant=#primary,
) => {
  <button className={Styles.button(~size, ~variant)} ?onClick disabled>
    {if loading {
      <div> {"loading..."->React.string} </div>
    } else {
      label->React.string
    }}
  </button>
}
