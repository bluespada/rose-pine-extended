local p = require("rose-pine.palette")

-- NOTE: intentionally no transparency handling here: lualine renders its
-- separators as transitional highlights built from the section background
-- colors, and a "NONE" section background produces a missing-background
-- separator highlight that the terminal then shows as white (see
-- rose-pine/neovim#288). Keep an opaque section background; transparency
-- still applies to the editor itself via the Normal/StatusLine highlights.
-- Reverted twice before (d6112a7, fc418a7): "NONE" reintroduces the bug.
local bg_base = p.surface

return {
	normal = {
		a = { bg = p.rose, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.rose },
		c = { bg = bg_base, fg = p.text },
	},
	insert = {
		a = { bg = p.foam, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.foam },
		c = { bg = bg_base, fg = p.text },
	},
	visual = {
		a = { bg = p.iris, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.iris },
		c = { bg = bg_base, fg = p.text },
	},
	replace = {
		a = { bg = p.pine, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.pine },
		c = { bg = bg_base, fg = p.text },
	},
	command = {
		a = { bg = p.love, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.love },
		c = { bg = bg_base, fg = p.text },
	},
	inactive = {
		a = { bg = bg_base, fg = p.muted, gui = "bold" },
		b = { bg = bg_base, fg = p.muted },
		c = { bg = bg_base, fg = p.muted },
	},
}
