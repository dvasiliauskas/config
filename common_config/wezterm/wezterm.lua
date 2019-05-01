local wezterm = require 'wezterm'
local config = {

    window_close_confirmation = "NeverPrompt",

    set_environment_variables = {
        PATH = wezterm.home_dir .. '/homebrew/bin/:' .. os.getenv('PATH'),
    },

    default_prog = { 'fish', '-l' },

    -- decoration
    window_decorations = "NONE|RESIZE",
    enable_tab_bar = false,
    initial_rows = 48,
    initial_cols = 140,

    -- font
    -- https://wezfurlong.org/wezterm/config/lua/wezterm/font.html
    -- font = wezterm.font('JetBrains Mono', { weight = 'Bold', italic = false }),
    font = wezterm.font('Lekton', { weight = 'Bold', italic = false }),
    font_size = 12.0,

    -- Configures the hinting and (potentially) the 
    -- rendering mode used with the freetype rasterizer. 
    -- The following values are possible:
    -- Normal, Light, Mono, HorizontalLcd
    freetype_load_target = "Normal",

    -- design
    automatically_reload_config = true,
    cursor_blink_rate = 800,
    window_background_opacity = 0.92,

    -- colors
    colors = {

        -- The default text color
        foreground = 'rgb(219,219,219)',

        -- The default text color
        -- background = 'black',

    },
    color_scheme = "batman",
    keys = {
    -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
    {key="LeftArrow", mods="OPT", action=wezterm.action{SendString="\x1bb"}},
    -- Make Option-Right equivalent to Alt-f; forward-word
    {key="RightArrow", mods="OPT", action=wezterm.action{SendString="\x1bf"}},
  }

}

return config
