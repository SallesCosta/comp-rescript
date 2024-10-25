module Styles = {
  open Emotion

  let wrapper = css({
    "alignItems": "center",
    "backgroundColor": "#172128",
    "display": "flex",
    "height": "400px",
    "justifyContent": "center",
  })
}

module CardWrapperStorybook = {
  let mockDescription = "Un talk-show spectaculaire, drôle et festif, une émission de société et de divertissement,... "
  let mockImgUrl = "https://www.france.tv/image/vignette_3x4/300/400/o/o/m/b4a6035e-phpcoemoo.jpg"

  @react.component
  let make = (~title, ~description, ~imgUrl, ~dotIcon, ~buttonLabel) => {
    <div className=Styles.wrapper>
      <Card imgUrl description dotIcon title buttonLabel />
    </div>
  }
}

module ButtonWrapperStorybook = {
  @react.component
  let make = (~label, ~size, ~variant, ~disabled, ~loading) => {
    <div className=Styles.wrapper>
      <Button label size variant disabled loading/>
    </div>
  }
}

module ArrowButtonWrapperStorybook = {
  @react.component
  let make = (~dir) => {
    <div className=Styles.wrapper>
      <ArrowButton dir/>
    </div>
  }
}
