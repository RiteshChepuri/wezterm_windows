local k = require("utils.keys")
local wezterm = require('wezterm')

if wezterm.config_builder then
    config = wezterm.config_builder()
end


local config = {
    font_size = 12,
    window_background_opacity = 0.9,
    enable_tab_bar = false,
    window_decorations = "RESIZE",
    default_domain = "WSL:Arch",
    automatically_reload_config = true,
    warn_about_missing_glyphs = false,
    native_macos_fullscreen_mode = false,
    color_scheme = "Nucolors",
    debug_key_events = false,
    window_close_confirmation = "NeverPrompt",
    disable_default_mouse_bindings = true,
    audible_bell = "Disabled",
    default_cwd = "/mnt/c/Users/rites/",
    font = wezterm.font "JetBrains Mono",

    keys = {
        k.alt_key("o", k.multiple_actions(":GoToFile")),
        k.alt_key("q", k.multiple_actions("exit")),
        k.alt_to_tmux_prefix("i", "c"),
        k.alt_to_tmux_prefix("=", "%"),
        k.alt_to_tmux_prefix("-", "-"),
        k.alt_to_tmux_prefix("g", "g"),
        k.alt_to_tmux_prefix("p", "T"),
        k.alt_to_tmux_prefix("`", "n"),
        k.alt_to_tmux_prefix("]", ")"),
        k.alt_to_tmux_prefix("[", "("),
        k.alt_to_tmux_prefix("u", "u"),
        k.alt_to_tmux_prefix("y", "y"),
        k.alt_to_tmux_prefix("i", "c"),
        k.ctrl_to_tmux_prefix("1", "1"),
        k.ctrl_to_tmux_prefix("2", "2"),
        k.ctrl_to_tmux_prefix("3", "3"),
    }
}

return config
