module Styles = {
  open Emotion

  let wrapper = css({
    "alignItems": "center",
    "backgroundColor": "#172128",
    "display": "flex",
    "height": "100dvh",
    "justifyContent": "center",
    "width": "100%",
  })
}

module Wrapper = {
  @react.component
  let make = (~children) => {
    <div className={Styles.wrapper}> {children} </div>
  }
}

let default = () => {
  <Wrapper>
    <div>
      <Button label="découvrir" variant=#primary />
      <Button label="SECONDARY" variant=#secondary size=#md />
    </div>
 </Wrapper>
}
