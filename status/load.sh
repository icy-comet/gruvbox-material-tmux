show_load() {
  local index icon color text module

  index=$1
  icon="$(get_tmux_option "@gruvboxm_load_icon" "󰊚")"
  color="$(get_tmux_option "@gruvboxm_load_color" "$thm_blue")"
  text="$(get_tmux_option "@gruvboxm_load_text" "#{load_full}")"

  module=$(build_status_module "$index" "$icon" "$color" "$text")

  echo "$module"
}
