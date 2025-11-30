-- ~/.config/nvim/lua/plugins/formatting.lua or similar
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        odin = { "odinfmt" }, -- Assuming 'odin_fmt' is the name of your Odin formatter
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })

    -- Optional: Create an autocommand to format on save for Odin files
    vim.api.nvim_create_autocmd("BufWritePost", {
      group = vim.api.nvim_create_augroup("ConformOdinFormat", { clear = true }),
      pattern = "*.odin",
      callback = function(args)
        conform.format({ bufnr = args.buf, async = true })
      end,
    })
  end,
}
