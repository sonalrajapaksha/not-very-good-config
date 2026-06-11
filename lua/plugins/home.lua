-- alpha , home page
return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
	[[                                                                       ]],
	[[                                                                     ]],
	[[       ████ ██████           █████      ██                     ]],
	[[      ███████████             █████                             ]],
	[[      █████████ ███████████████████ ███   ███████████   ]],
	[[     █████████  ███    █████████████ █████ ██████████████   ]],
	[[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
	[[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
	[[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
	[[                                                                       ]],
}

    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find File",       "<cmd>lua LazyVim.pick()()<cr>"),
      dashboard.button("n", "  New File",        "<cmd>ene<BAR>startinsert<cr>"),
      dashboard.button("r", "  Recent Files",    "<cmd>lua LazyVim.pick('oldfiles')()<cr>"),
      dashboard.button("g", "  Find Text",       "<cmd>lua LazyVim.pick('live_grep')()<cr>"),
      dashboard.button("c", "  Config",          "<cmd>lua LazyVim.pick.config_files()()<cr>"),
      dashboard.button("q", "  Quit",            "<cmd>qa<cr>"),
    }

    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end

    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8

    return dashboard
  end,
}

