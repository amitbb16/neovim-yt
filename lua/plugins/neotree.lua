return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- safe even if icons disabled
    "MunifTanjim/nui.nvim",
    {
      "s1n7ax/nvim-window-picker",
      version = "2.*",
      config = function()
        require("window-picker").setup({
          filter_rules = {
            include_current_win = false,
            autoselect_one = true,
            bo = {
              filetype = { "neo-tree", "neo-tree-popup", "notify" },
              buftype = { "terminal", "quickfix" },
            },
          },
        })
      end,
    },
  },

  config = function()
    require("neo-tree").setup({
      close_if_last_window = false,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = false,

      -- ✅ Safe ASCII / Unicode setup for Windows terminals
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",          -- tree vertical line
          last_indent_marker = "└",     -- last item in a folder
          highlight = "NeoTreeIndentMarker",
          with_expanders = true,
          expander_collapsed = "▸",     -- collapsed folder
          expander_expanded = "▾",      -- expanded folder
          expander_highlight = "NeoTreeExpander",
        },
        icon = {
          folder_closed = "📁",         -- closed folder
          folder_open = "📂",           -- open folder
          folder_empty = "▫",           -- empty folder
          default = "•",                -- file bullet
          highlight = "NeoTreeFileIcon",
        },
        modified = { symbol = "[+]", highlight = "NeoTreeModified" },
        name = { use_git_status_colors = true, highlight = "NeoTreeFileName" },
        git_status = {
          symbols = {
            added     = "+",
            modified  = "~",
            deleted   = "-",
            renamed   = ">",
            untracked = "?",
            ignored   = "i",
            unstaged  = "!",
            staged    = "✔",
            conflict  = "✖",
          },
        },
      },

      window = {
        position = "left",
        width = 20,
        mapping_options = { noremap = true, nowait = true },
        mappings = {
          ["<space>"] = { "toggle_node", nowait = false },
          ["<2-LeftMouse>"] = "open",
          ["<cr>"] = "open",
          ["l"] = "open",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
          ["t"] = "open_tabnew",
          ["w"] = "open_with_window_picker",
          ["C"] = "close_node",
          ["z"] = "close_all_nodes",
          ["a"] = { "add", config = { show_path = "none" } },
          ["A"] = "add_directory",
          ["d"] = "delete",
          ["r"] = "rename",
          ["y"] = "copy_to_clipboard",
          ["x"] = "cut_to_clipboard",
          ["p"] = "paste_from_clipboard",
          ["m"] = "move",
          ["q"] = "close_window",
          ["R"] = "refresh",
          ["?"] = "show_help",
          ["<"] = "prev_source",
          [">"] = "next_source",
          ["i"] = "show_file_details",
        },
      },

      filesystem = {
        filtered_items = {
          visible = false,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db",
            "node_modules",
            "__pycache__",
            ".virtual_documents",
            ".git",
            ".python-version",
            ".venv",
          },
        },
        follow_current_file = { enabled = false },
        group_empty_dirs = false,
        hijack_netrw_behavior = "open_default",
      },

      buffers = {
        follow_current_file = { enabled = true },
        group_empty_dirs = true,
        show_unloaded = true,
      },

      git_status = {
        window = {
          position = "float",
          mappings = {
            ["A"] = "git_add_all",
            ["gu"] = "git_unstage_file",
            ["ga"] = "git_add_file",
            ["gr"] = "git_revert_file",
            ["gc"] = "git_commit",
            ["gp"] = "git_push",
            ["gg"] = "git_commit_and_push",
          },
        },
      },
    })

    -- ✅ Keymaps
    vim.keymap.set("n", "\\", ":Neotree reveal<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>e", ":Neotree toggle position=left<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ngs", ":Neotree float git_status<CR>", { noremap = true, silent = true })
  end,
}
