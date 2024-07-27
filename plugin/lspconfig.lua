-- refer to the following
-- https://zenn.dev/fukakusa_kadoma/articles/99e8f3ab855a56
local on_attach = function(client, bufnr)
	local set = vim.keymap.set
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason").setup({
	ensure_installed = {
		"mypy",
		"black"
	}
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"ruff",
		"pyright"
	}
})
require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
}



local null_ls = require("null-ls")

