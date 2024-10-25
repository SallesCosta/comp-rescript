type props = {
  dir: Storybook.argTypes<ArrowButton.arrowButtonProps>,
}

let default = Storybook.make(
  ~title="Components/ArrowButton",
  ~component=WrapperStorybook.ArrowButtonWrapperStorybook.make,
  ~argTypes={
    dir: Storybook.argType(~defaultValue=#right, ~options=[#right, #left], ~control=Radio, ()),
  },
  (),
)
