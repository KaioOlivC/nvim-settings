local lsp_zero = require('lsp-zero')

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver'
	},
	handlers = {
		lsp_zero.default_setup,
		tsserver = function()
			require('lspconfig').tsserver.setup({})
		end
	}
})

lsp_zero.omnifunc.setup({
    tabcomplete = false
})

lsp_zero.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr}

	lsp_zero.default_keymaps(opts)

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
	vim.keymap.set("n", "L", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leader>vft", function() vim.lsp.buf.format() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
  },
  mapping = {
    ['<C-o>'] = cmp.mapping.confirm({select = false}),
    ['<C-n>'] = cmp.mapping.abort(),
    ['<C-i>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<C-e>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-S-i>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-S-e>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
