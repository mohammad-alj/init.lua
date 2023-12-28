return {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
            ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
            ["<C-y>"] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })

        local capb = require("cmp_nvim_lsp").default_capabilities()
        cmp.setup({
            mapping = cmp_mappings,
            capabilities = capb,

        })
    end,
}
