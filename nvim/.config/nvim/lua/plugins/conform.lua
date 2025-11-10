return {
	{
		"stevearc/conform.nvim",
		keys = {
			{
				-- Manually format the current buffer
				"<leader>f",
				function()
					require("conform").format({ async = true, lsp_fallback = true })
				end,
				mode = "n", -- Normal mode
				desc = "[F]ormat Buffer",
			},
			{
				-- Manually format the visual selection
				"<leader>f",
				function()
					require("conform").format({
						range = {
							start = vim.fn.getpos("'<"),
							["end"] = vim.fn.getpos("'>"),
						},
						async = true,
						lsp_fallback = true,
					})
				end,
				mode = "v", -- Visual mode
				desc = "[F]ormat Selection",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
			},
		},
	},
}
