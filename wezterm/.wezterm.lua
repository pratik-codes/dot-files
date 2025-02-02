-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.colors = {
	-- Base colors
	foreground = "#b2bfc0", -- Matches "base0" from your palette
	background = "#000000",
	cursor_bg = "#b2bfc0", -- Matches "base0"
	cursor_border = "#b2bfc0", -- Matches "base0"
	cursor_fg = "#001f33", -- Matches "bg"
	selection_bg = "#33467c", -- Custom from tokyonight
	selection_fg = "#c0caf5", -- Custom from tokyonight

	-- ANSI colors
	ansi = {
		"#001a25", -- black (base04)
		"#f0514a", -- red (red500)
		"#99cc33", -- green (green300)
		"#ffb11f", -- yellow (yellow500)
		"#0d8dbd", -- blue (blue500)
		"#ae66cc", -- magenta (magenta500)
		"#55b2c4", -- cyan (cyan500)
		"#e0e6e0", -- white (fg)
	},

	-- Bright colors
	brights = {
		"#334455", -- bright black (base03)
		"#ff6f61", -- bright red (red300)
		"#c3e88d", -- bright green (green300)
		"#ffe48b", -- bright yellow (yellow100)
		"#5ebeff", -- bright blue (blue300)
		"#c68cf7", -- bright magenta (magenta300)
		"#66d9e8", -- bright cyan (cyan300)
		"#f0f4f0", -- bright white (base1)
	},
}

config.colors = {
	-- tokyonight theme
	foreground = "#c0caf5",
	-- background = "#000000",
	background = "#1a1b26",
	cursor_bg = "#c0caf5",
	cursor_border = "#c0caf5",
	cursor_fg = "#1a1b26",
	selection_bg = "#33467c",
	selection_fg = "#c0caf5",
	ansi = {
		"#15161e", -- black
		"#f7768e", -- red
		"#9ece6a", -- green
		"#e0af68", -- yellow
		"#7aa2f7", -- blue
		"#bb9af7", -- magenta
		"#7dcfff", -- cyan
		"#a9b1d6", -- white
	},
	brights = {
		"#414868", -- bright black
		"#f7768e", -- bright red
		"#9ece6a", -- bright green
		"#e0af68", -- bright yellow
		"#7aa2f7", -- bright blue
		"#bb9af7", -- bright magenta
		"#7dcfff", -- bright cyan
		"#c0caf5", -- bright white
	},
}

--
--
-- my coolnight colorscheme
-- config.colors = {
-- 	foreground = "#CBE0F0",
-- 	background = "#000000",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }

-- gruvbox
-- config.colors = {
-- 	foreground = "#ebdbb2",
-- 	-- light gray
-- 	-- background = "#282828",
-- 	-- dark gray
-- 	-- background = "#141414",
-- 	-- black
-- 	background = "#000000",
-- 	cursor_bg = "#fe8019",
-- 	cursor_border = "#fe8019",
-- 	cursor_fg = "#282828",
-- 	selection_bg = "#504945",
-- 	selection_fg = "#ebdbb2",
-- 	ansi = {
-- 		"#282828", -- black
-- 		"#cc241d", -- red
-- 		"#98971a", -- green
-- 		"#d79921", -- yellow
-- 		"#458588", -- blue
-- 		"#b16286", -- magenta
-- 		"#689d6a", -- cyan
-- 		"#a89984", -- white
-- 	},
-- 	brights = {
-- 		"#928374", -- bright black (gray)
-- 		"#fb4934", -- bright red
-- 		"#b8bb26", -- bright green
-- 		"#fabd2f", -- bright yellow
-- 		"#83a598", -- bright blue
-- 		"#d3869b", -- bright magenta
-- 		"#8ec07c", -- bright cyan
-- 		"#ebdbb2", -- bright white
-- 	},
-- }
--
-- window realted settings
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10
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
config.line_height = 1.1

-- cursor changes
config.cursor_blink_ease_out = "Linear"
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_rate = 400

-- Prevent window resizing when changing font size
config.adjust_window_size_when_changing_font_size = false

config.default_prog = { "/usr/local/bin/fish", "--login" }

return config
