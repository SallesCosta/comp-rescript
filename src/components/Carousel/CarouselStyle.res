open Emotion

let container = css({
  // "border":"2px solid orange",
  "position":"relative",
  "width":"100dvw",
  "maxWidth":"100dvw",
  "cursor": "pointer",
  // "height":"400px",

  "display": "flex",
  "gap": "32px",
  "flexDirection": "column",

  "@media (min-width: 768px)": {
  "&:hover #actionsButtons": {
    "opacity": 1,
  },
 },
})

let actions = css({
  "top": 0,
  "position": "absolute",
  "display": "flex",
  "transition": "opacity 300ms",
  "opacity": 0,
  "justifyContent": "space-between",
  "alignItems": "center",
  "height": "100%",
  "width": "100%",
  "padding": "16px",
 })

let list = css({
  "display": "flex",
  "overflowY":"hidden",
  "flexDirection": "row",
  "listStyle": "none",
  "padding": 0,
  "margin": "0 0 0 16px",
  "gap": "16px",

  "@media (min-width: 768px)": {
    "padding": "16px 32px",
  },

"@media (min-width: 1200px)": {
    "padding": "32px",
  }

})

let title = css({
  "color": Theme.Colors.textWhite,
  "fontSize": "24px",
  "fontWeight": 700,
  "margin": 0,
  "lineHeight": "120%",

  "@media (min-width: 1200px)": {
    "fontSize": "28px",
  }
})
