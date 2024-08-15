-- ============== nvm-tree =================
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  event = "VeryLazy",
  keys = {
    {'<Leader>n', ":NvimTreeToggle<cr>"},
  },
  cmd = "NvimTreeToggle",
  init = function()
    vim.api.nvim_create_autocmd({"VimEnter"}, {pattern = "*", callback = function(data)
      -- buffer is a directory
      local directory = vim.fn.isdirectory(data.file) == 1

      if not directory then
        if 1 == #vim.v.argv then
          vim.cmd('NvimTreeToggle')
        end
        return
      end

      -- create a new, empty buffer
      vim.cmd.enew()

      -- wipe the directory buffer
      vim.cmd.bw(data.buf)

      -- change to the directory
      vim.cmd.cd(data.file)


      vim.cmd('NvimTreeToggle')
    end})
  end,
  config = function()
    require("nvim-tree").setup({
        sort_by = "case-sensitive",
        view = {
          width = 40,
          mappings = {
            list = {
              { key = "u", action = "dir_up" },
              { key = "X", action = "cut" },
              { key = "x", action = "close_node" },
              { key = "D", action = "cd" },
            },
          },
        },
        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            modified_placement = "before",
            show = {
              modified = true
            },
            glyphs = {
              default = '',
              symlink = '',
              modified = '󰃉',
            },
          },
          group_empty = true,
        },
        modified = {
          enable = true,
          show_on_dirs = false,
        },
        filters = {
          dotfiles = true,
        },
        git = {
          ignore = false,
        },
      })
    --require("nvim-tree").setup({
    --    sort_by = "name",
    --    --      sort_by = function(nodes)
    --    --        table.sort(nodes, function(a, b)
    --    --          return string.lower(a.name) < string.lower(b.name)
    --    --        end)
    --    --      end,
    --    --
    --    git = {
    --      ignore = false
    --    },
    --
    --    view = {
    --      width = 30,
    --      mappings = {
    --        list = {
    --          { key = "u", action = "dir_up" },
    --        },
    --      },
    --    },
    --    renderer = {
    --      group_empty = true,
    --      indent_markers = {
    --        enable = true,
    --      },
    --    },
    --    filters = {
    --      dotfiles = true,
    --    },
    --  })
  end,
}
-- ==========================================
