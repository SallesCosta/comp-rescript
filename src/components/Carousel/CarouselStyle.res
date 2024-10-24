open Emotion

let container = css({
  "border": "2px solid orange",
  "position": "relative",
  "width": "90dvw",
  "maxWidth": "100dvw",
  "cursor": "pointer",
  "height": "400px",
  "display": "flex",
  "gap": "32px",
  "flexDirection": "column",
  "@media (min-width: 768px)": {
    "&:hover #actionsButtons": {
      "opacity": 1,
    },
  },
})

let list = css({
  "display": "flex",
  "overflowY": "hidden",
  "flexDirection": "row",
  "listStyle": "none",
  "padding": 0,
  "margin": "0 0 0 16px",
  "gap": "24px",
  "@media (min-width: 768px)": {
    "padding": "16px 32px",
  },
  "@media (min-width: 1200px)": {
    "padding": "32px",
  },
})

let title = css({
  "color": Theme.Colors.textWhite,
  "fontSize": "24px",
  "fontWeight": 700,
  "margin": 0,
  "lineHeight": "120%",
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
