-- ============== telescope =================
return {
  {
    "nvim-lua/plenary.nvim",
    event = "VeryLazy",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 'plenary.nvim' },
    event = "VeryLazy",
    cmd = "Telescope",
    keys = {
      {"<Leader>ff", "<cmd>Telescope find_files<cr>"},
      {"<C-p>", "<cmd>Telescope find_files<cr>"},
      {"<Leader>fg", "<cmd>Telescope live_grep<cr>"},
      {"<Leader>fb", "<cmd>Telescope buffers<cr>"},
      {"<C-b>", "<cmd>Telescope buffers<cr>"},
      --{"<C-b>", "<cmd>Telescope oldfiles cwd_only=true alternate=git_files<cr>"},
      {"<Leader>fh", "<cmd>Telescope help_tags<cr>"},
    },
    config = function() require("configs.telescope") end,
  },
}
-- ==========================================

