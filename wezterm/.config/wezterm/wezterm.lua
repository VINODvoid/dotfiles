local wezterm = require("wezterm")
local config = require("config")
require("events")

-- Optional: Override color scheme based on WEZTERM_THEME environment variable
-- Supported themes: catppuccin, nord, onedark, tokyonight, dracula
local themes = {
	catppuccin = "Catppuccin Mocha",
	nord = "Nord (Gogh)",
	onedark = "One Dark (Gogh)",
	tokyonight = "Tokyo Night",
	dracula = "Dracula (Official)",
}

-- Check if WEZTERM_THEME is set, otherwise use config default
local success, stdout, stderr = wezterm.run_child_process({ os.getenv("SHELL"), "-c", "printenv WEZTERM_THEME" })
if success and stdout then
	local selected_theme = stdout:gsub("%s+", "")
	if selected_theme ~= "" and themes[selected_theme] then
		config.color_scheme = themes[selected_theme]
	end
end

return config
