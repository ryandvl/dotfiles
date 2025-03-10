local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

		-- Add Extra LazyVim Plugins

		-- Languages:
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		{ import = "lazyvim.plugins.extras.lang.prisma" },

		-- { import = "lazyvim.plugins.extras.lang.python" },

		{ import = "lazyvim.plugins.extras.lang.go" },

		-- { import = "lazyvim.plugins.extras.lang.java" },
		-- { import = "lazyvim.plugins.extras.lang.kotlin" },

		{ import = "lazyvim.plugins.extras.lang.docker" },

		-- Formating
		{ import = "lazyvim.plugins.extras.formatting.prettier" },

		-- Linting
		{ import = "lazyvim.plugins.extras.linting.eslint" },

		-- Editor
		{ import = "lazyvim.plugins.extras.editor.inc-rename" },

		-- Utils
		{ import = "lazyvim.plugins.extras.util.dot" },

		-- Others
		{ import = "lazyvim.plugins.extras.vscode" },

		{ import = "plugins" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = { colorscheme = { "tokyonight", "habamax" } },
	checker = {
		enabled = true,
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
