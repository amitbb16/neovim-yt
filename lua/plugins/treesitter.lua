return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { 
                "bash",
                "c",
                "css",
                "dockerfile",
                "go",
                "graphql",
                "lua",
                "javascript",
                "typescript",
                "python",
                "sql",
                "make",
                "yaml",
                "proto",
                "html",
                "hcl",
                "json",
                "markdown",
                "markdown_inline",
                "php",
                "query",
                "regex",
                "ruby",
                "rust",
                "scss",
                "terraform",
                "tsx",
                "vim",
                "vimdoc",
          },
          sync_install = false,
          auto_install = true,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
}
