return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })()
		end,
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
			config = function()
				require("telescope").load_extension("fzf")
			end,
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = true,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require('rose-pine').setup({
				disable_background = false,
				styles = {
					italic = false,
				},
			})
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
	},
	{
		"mbbill/undotree"
	},
	{
		"tpope/vim-fugitive"
	},
--        "folke/which-key.nvim",
--        event = "VeryLazy",
--        opts = {
--            -- your configuration comes here
--            -- or leave it empty to use the default settings
--            -- refer to the configuration section below
--        },
--        keys = {
--            {
--                "<leader>?",
--                function()
--                    require("which-key").show({global = false})
--                end,
--                desc = "Buffer Local Keymaps (which-key)"
--            }
--        }
--	}, {
--		"nvim-tree/nvim-tree.lua",
--		dependencies = {
--			"nvim-tree/nvim-web-devicons",
--		}
--	}, {
--		"tpope/vim-fugitive"
--	}, {
--	    'nvim-lualine/lualine.nvim',
--		dependencies = { 'nvim-tree/nvim-web-devicons' }
--	}
}
