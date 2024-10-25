open Emotion

let container = css({
  "position": "relative",
  "maxWidth": "100dvw",
  "cursor": "pointer",
  "display": "flex",
  "gap": "16px",
  "flexDirection": "column",
  "@media (min-width: 1200px)": {
    "gap": 0,
  },
  "@media (min-width: 768px)": {
    "&:hover #actionsButtons": {
      "opacity": 1,
    },
  },
})

let title = css({
  "color": Theme.Colors.textWhite,
  "fontSize": "24px",
  "fontWeight": 700,
  "margin": 0,
  "lineHeight": "120%",
  "paddingLeft": "16px",
  "transition": Theme.Constants.transition,
  "@media (min-width: 768px)": {
    "paddingLeft": "32px",
  },
  "@media (min-width: 1200px)": {
    "fontSize": "28px",
  },
})

let actionsRight = css({
  "top": 0,
  "position": "absolute",
  "display": "flex",
  "right": 0,
  "transition": "opacity 300ms",
  "opacity": 0,
  "alignItems": "center",
  "height": "100%",
  "paddingRight": "16px",
})

let actionsLeft = css({
  "top": 0,
  "position": "absolute",
  "left": 0,
  "display": "flex",
  "transition": "opacity 300ms",
  "opacity": 0,
  "alignItems": "center",
  "height": "100%",
  "paddingLeft": "16px",
})

let list = (~p: int) => {
  let position = switch p {
     | 1 => "start"
     | 2 => "center"
     | 3 => "end"
     | _ => "start"
   }
  css({
    "display": "flex",
    "padding": 0,
    "justifyContent": position,
    "width": "100dvw",
    "transition": "justify-content 2000ms ease-in-out",
    "gap": "24px",
    "@media (min-width: 768px)": {
      "padding": "16px 32px",
    },
    "@media (min-width: 1200px)": {
      "padding": "32px",
    },
  })
}
