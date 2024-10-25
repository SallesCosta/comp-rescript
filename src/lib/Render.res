let s = React.string

let map = (elements, fn) =>
  elements
  ->Belt.Array.mapWithIndex((key, element) => fn(element, key->Belt.Int.toString))
  ->React.array

module Styles = {
  open Emotion

  let wrapper = css({
    "alignItems": "center",
    "backgroundColor": "#172128",
    "display": "flex",
    "flexDirection": "column",
    "gap": "30px",
    "height": "100dvh",
    "justifyContent": "center",
    "width": "100%",
  })
}
