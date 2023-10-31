-- import conform formatter plugin safely
local status, conform = pcall(require, "conform")
if not status then
	print("conform did not load")
	return
end

-- setup conform plugin
conform.setup({
	formatters_by_ft = {
		-- lua
		lua = { "stylua" },
		-- base web formats (use a sub-list to run only the first available formatter)
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		json = { { "prettierd", "prettier" } },
		-- svelte
		-- svelte = { { "prettierd", "prettier" } },
		-- react
		javascriptreact = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		-- everything else will use lsp format
	},
	-- enable format on save
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 500,
		lsp_fallback = true,
	},
})