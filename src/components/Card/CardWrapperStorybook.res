let mockDescription = "Un talk-show spectaculaire, drôle et festif, une émission de société et de divertissement,... "
let mockImgUrl = "https://www.france.tv/image/vignette_3x4/300/400/o/o/m/b4a6035e-phpcoemoo.jpg"

module Styles = {
  open Emotion

  let cardWrapperStorybook = css({
    "alignItems": "center",
    "backgroundColor": "#172128",
    "display": "flex",
    "gap": "15px",
    "height": "100dvh",
    "justifyContent": "center",
    "width": "100%",
  })
}

@react.component
let make = (~title, ~description, ~imgUrl, ~dotIcon, ~buttonLabel) => {
  <div className={Styles.cardWrapperStorybook}>
    <Card imgUrl description dotIcon title buttonLabel />
  </div>
}
