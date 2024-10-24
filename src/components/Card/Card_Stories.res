type props = {
  title: Storybook.argTypes<string>,
  description: Storybook.argTypes<string>,
  imgUrl: Storybook.argTypes<string>,
  buttonLabel: Storybook.argTypes<string>,
  dotIcon: Storybook.argTypes<string>,
}

let default = Storybook.make(
  ~title="Components/Card",
  ~component=CardWrapperStorybook.make,
  ~argTypes={
    title: Storybook.argType(~defaultValue="Brokenwood", ~control=Text, ()),
    buttonLabel: Storybook.argType(~defaultValue="découvrir", ~control=Text, ()),
    description: Storybook.argType(
      ~defaultValue=CardWrapperStorybook.mockDescription,
      ~control=Text,
      (),
    ),
    imgUrl: Storybook.argType(~defaultValue=CardWrapperStorybook.mockImgUrl, ~control=Text, ()),
    dotIcon: Storybook.argType(
      ~defaultValue="point-3.svg",
      ~options=["point-2.svg", "point-3.svg", "point-5.svg"],
      ~control=Select,
      (),
    ),
  },
  (),
)

