return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "neovim/nvim-lspconfig",
        ft = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
        config = function()
            local function show_cursor_diagnostic()
                local cursor = vim.api.nvim_win_get_cursor(0)
                local diagnostics = vim.diagnostic.get(0, {
                    lnum = cursor[1] - 1,
                    col = cursor[2],
                })

                if #diagnostics == 0 then
                    pcall(vim.lsp.buf.hover)
                    return
                end

                vim.diagnostic.open_float(nil, {
                    focus = false,
                    scope = "cursor",
                    border = "rounded",
                })
            end

            vim.lsp.config("ts_ls", {
                on_attach = function(_, bufnr)
                    vim.keymap.set("n", "<C-.>", function()
                        show_cursor_diagnostic()
                    end, {
                        buffer = bufnr,
                        desc = "Show diagnostics or hover info",
                    })
                end,
            })
            vim.lsp.enable("ts_ls")
        end,
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
        }
    }
}
