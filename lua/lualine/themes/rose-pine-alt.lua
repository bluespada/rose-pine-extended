local p = require("rose-pine.palette")

-- NOTE: intentionally no transparency handling here (see rose-pine.lua):
-- lualine renders its separators as transitional highlights built from the
-- section background colors, and a "NONE" section background produces a
-- missing-background separator highlight that the terminal then shows as
-- white (see rose-pine/neovim#288).
local bg_base = p.base

return {
	normal = {
		a = { bg = p.surface, fg = p.rose, gui = "bold" },
		b = { bg = p.surface, fg = p.text },
		c = { bg = p.surface, fg = p.subtle, gui = "italic" },
	},
	insert = {
		a = { bg = p.surface, fg = p.foam, gui = "bold" },
	},
	visual = {
		a = { bg = p.surface, fg = p.iris, gui = "bold" },
	},
	replace = {
		a = { bg = p.surface, fg = p.pine, gui = "bold" },
	},
	command = {
		a = { bg = p.surface, fg = p.love, gui = "bold" },
	},
	inactive = {
		a = { bg = bg_base, fg = p.subtle, gui = "bold" },
		b = { bg = bg_base, fg = p.subtle },
		c = { bg = bg_base, fg = p.subtle, gui = "italic" },
	},
}
