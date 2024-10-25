open Render

module Wrapper = {
  @react.component
  let make = (~children) => {
    <div className={Styles.wrapper}> {children} </div>
  }
}

let default = () => {
  <Wrapper>
    <Button label="découvrir" variant=#primary />
    <Button label="SECONDARY" variant=#secondary size=#md />
    <Carousel />
  </Wrapper>
}
