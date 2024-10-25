open Render
open CardStyles

type dotIconTypes = [#point2 | #point3 | #point5]

let iconPath = (dotIcon: string) => switch dotIcon {
  | "point-2.svg" => "/images/point-2.svg"
  | "point-3.svg" => "/images/point-3.svg"
  | "point-5.svg" => "/images/point-5.svg"
  | _ => "/images/point-3.svg"
}

module Card = {
  @react.component
  let make = (~title, ~description, ~imgUrl, ~dotIcon: string, ~buttonLabel) => {

    <div className=card>
      <div className=poster>
        <div className=poster__cached__info id="cached">
          <p className=poster__cached_title> {title->s} </p>
          <span className=poster__cached_description> {description->s} </span>
          <Button label=buttonLabel size=#md />
        </div>
        <div className=poster__image__wrapper id="image__wrapper">
          <img className=poster__image src={imgUrl} alt="mocked image" />
        </div>
        <span className=poster__gradient__top />
        <span className=poster__gradient__bottom />
        <img className=poster__point__number src=iconPath(dotIcon) alt="svg icon" />
      </div>
      <h2 className=subTitle id="title"> {title->s} </h2>
    </div>
  }
}

module Styles = {
  open Emotion

  let cardWrapperStorybookStyle = css({
    "alignItems": "center",
    "backgroundColor": "#172128",
    "display": "flex",
    "gap": "15px",
    "height": "100dvh",
    "justifyContent": "center",
    "width": "100%",
  })
}

module CardWrapperStorybook = {
  let mockDescription = "Un talk-show spectaculaire, drôle et festif, une émission de société et de divertissement,... "
  let mockImgUrl = "https://www.france.tv/image/vignette_3x4/300/400/o/o/m/b4a6035e-phpcoemoo.jpg"


  @react.component
  let make = (~title, ~description, ~imgUrl, ~dotIcon, ~buttonLabel) => {
    <div className={Styles.cardWrapperStorybookStyle}>
      <Card imgUrl description dotIcon title buttonLabel />
    </div>
  }
}

