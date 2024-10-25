type props = {
  label: Storybook.argTypes<string>,
  size: Storybook.argTypes<Button.size>,
  variant: Storybook.argTypes<Button.variant>,
  disabled: Storybook.argTypes<bool>,
  loading: Storybook.argTypes<bool>,
}

let default = Storybook.make(
  ~title="Components/Button",
  ~component=Button.make,
  ~argTypes={
    label: Storybook.argType(~defaultValue="découvrir", ~control=Text, ()),
    size: Storybook.argType(~defaultValue=#md, ~options=[#md, #lg], ~control=Radio, ()),
    variant: Storybook.argType(
      ~defaultValue=#primary,
      ~options=[#primary, #secondary],
      ~control=Radio,
      (),
    ),
    disabled: Storybook.argType(~defaultValue=false, ~control=Boolean, ()),
    loading: Storybook.argType(~defaultValue=false, ~control=Boolean, ()),
  },
  (),
)
