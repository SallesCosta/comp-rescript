open Emotion

let card = css({
  "backgroundColor": "transparent",
  "border": 0,
  "borderRadius": Theme.Constants.borderRadius,
  "cursor": "pointer",
  "height": "355px",
  "transition": `transform 250ms ease-in-out`,
  "textDecoration": "none",
  "width": "240px",
  "overflow": "hidden",
  "@media (min-width: 200px)": {
    "&:hover": {
      "transform": "scale(1.2)",
    },
  },
  "&:hover #cached": {
    "opacity": 1,
    "border": "1px solid rgba(97, 108, 121, .49)",
    "background": "linear-gradient(180deg, rgba(23, 33, 40, 0.5) 0%, rgba(23, 33, 40, 0.9) 40.52%, #172128 100%)",
    "boxShadow": "3px 3px 8px 4px rgba(0, 0, 0, .2)",
  },
  "&:hover #title": {
    "opacity": 0,
  },
})

let poster__cached__info = css({
  "height": "100%",
  "justifyContent": "end",
  "border": "none",
  "padding": "16px",
  "background": "transparent",
  "gap": "8px",
  "display": "flex",
  "flexDirection": "column",
  "bottom": 0,
  "opacity": 0,
  "borderRadius": Theme.Constants.borderRadius,
  "position": "absolute",
  "transition": "opacity 300ms",
  "width": "100%",
  "zIndex": "1",
})

let poster__cached_title = css({
  "color": Theme.Colors.white,
  "fontSize": "16px",
  "textOverflow": "ellipsis",
  "overflow": "hidden",
  "margin": 0,
  "fontWeight": 700,
})

let poster__cached_description = css({
  "color": Theme.Colors.white,
  "fontSize": "12px",
  "fontWeight": 400,
  "height": "32px",
  "lineHeight": "16px",
  "border": 0,
  "textOverflow": "ellipsis",
  "width": "100%",
  "overflow": "hidden",
})

let poster__image__wrapper = css({
  "alignItems": "center",
  "border": 0,
  "display": "flex",
  "height": "100%",
  "left": 0,
  "top": 0,
  "overflow": "hidden",
  "borderRadius": Theme.Constants.borderRadius,
})

let poster__image = css({
  "height": "100%",
  "overflow": "hidden",
  "width": "auto",
  "position": "absolute",
  "borderRadius": Theme.Constants.borderRadius,
  "objectFit": "cover",
})

let poster__gradient__top = css({
  "background": "linear-gradient(0deg, transparent 20%, rgba(0, 0, 0, .5) 124.29%)",
  "borderRadius": "8px 8px 0 0 ",
  "position": "absolute",
  "height": "32px",
  "width": "100%",
  "top": 0,
})

let poster__gradient__bottom = css({
  "background": "linear-gradient(180deg, transparent 20%, rgba(0, 0, 0, .5) 124.29%)",
  "borderRadius": "0 0 8px 8px",
  "position": "absolute",
  "height": "32px",
  "width": "100%",
  "bottom": 0,
})

let poster = css({
  "height": "322px",
  "width": "240px",
  "border": 0,
  "backgroundColor": Theme.Colors.textWhite,
  "borderRadius": Theme.Constants.borderRadius,
  "position": "relative",
})

let poster__point__number = css({
  "height": "24px",
  "width": "24px",
  "right": "8px",
  "top": "8px",
  "position": "absolute",
  "overflowClipMargin": "content-box",
  "overflowClip": "clip",
})

let subTitle = css({
  "ariaHidden": true,
  "fontWeight": 400,
  "color": Theme.Colors.textWhite,
  "margin": 0,
  "marginTop": "8px",
  "opacity": 1,
  "transition": "opacity 600ms",
  "textDecoration": "none",
  "textOverflow": "ellipsis",
  "overflow": "hidden",
  "fontSize": "16px",
  "width": "100%",
})
