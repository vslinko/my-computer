name "my_computer"

run_list(
  "recipe[vslinko::dotfiles]",
  "recipe[my_computer::sublime_text]"
)
