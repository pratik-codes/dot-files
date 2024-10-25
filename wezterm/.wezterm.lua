-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- my coolnight colorscheme
config.colors = {
	foreground = "#CBE0F0",
	background = "#000000",
	cursor_bg = "#47FF9C",
	cursor_border = "#47FF9C",
	cursor_fg = "#011423",
	selection_bg = "#033259",
	selection_fg = "#CBE0F0",
	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- window realted settings
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_padding = {
	left = 0, -- Set the left padding (in pixels)
	right = 0, -- Set the right padding (in pixels)
	top = 0, -- Set the top padding (in pixels)
	bottom = 0, -- Set the bottom padding (in pixels)
}
-- Add a thin, dark orange window border
config.window_frame = {
	active_titlebar_bg = "#FF8C00", -- Dark orange for active window
	inactive_titlebar_bg = "#FF8C00", -- Dark orange for inactive window
}

-- font related settings
config.font = wezterm.font("JetBrains Mono", { weight = "ExtraBold" })
config.font_size = 12
config.line_height = 1.3

-- cursor changes
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_rate = 400

-- Prevent window resizing when changing font size
config.adjust_window_size_when_changing_font_size = false

return config
