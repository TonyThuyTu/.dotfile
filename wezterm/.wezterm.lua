local wezterm = require("wezterm")

return {
	-- Start PowerShell
	default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-NoLogo" },

	------------------------------------------------------
	-- 👀 UI
	------------------------------------------------------
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = false,
	show_tab_index_in_tab_bar = false,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",

	default_cursor_style = "BlinkingBar",

	window_padding = {
		left = 10,
		right = 10,
		top = 8,
		bottom = 8,
	},

	initial_cols = 120,
	initial_rows = 30,

	------------------------------------------------------
	-- 🔤 Fonts
	------------------------------------------------------
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" }),
	font_size = 12.5,
	line_height = 1.05,

	------------------------------------------------------
	-- 🎨 Colors
	------------------------------------------------------
	color_scheme = "Catppuccin Mocha",

	------------------------------------------------------
	-- 🖼 Background Image Enhancements
	------------------------------------------------------
	window_background_image = "D:\\Wallpaper\\sliver.png",

	window_background_image_hsb = {
		brightness = 0.65, -- 🔥 reduced brightness for easier reading
		hue = 1.0,
		saturation = 1.0,
	},

	-- Blend the wallpaper with terminal background
	background = {
		{
			source = { File = "D:\\Wallpaper\\gundam.jpg" },
			hsb = { brightness = 0.25 },
			repeat_x = "NoRepeat",
			repeat_y = "NoRepeat",
			vertical_align = "Top",
			horizontal_align = "Center",
		},
		{
			-- subtle overlay for readability
			source = { Color = "rgba(0, 0, 0, 0.45)" },
		},
	},

	window_background_opacity = 0.88,
	text_background_opacity = 1.0,

	------------------------------------------------------
	-- ⚡ Performance
	------------------------------------------------------
	front_end = "WebGpu",
	webgpu_power_preference = "HighPerformance",
	animation_fps = 120,
	max_fps = 165,
}
