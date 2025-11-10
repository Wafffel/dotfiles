return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal/vault",
      },
    },
    ui = {
      enable = false,
    },
    note_id_func = function(title)
      if title ~= nil and title ~= "" then
        return title
            :gsub(" ", "-")
            :gsub("[^A-Za-z0-9%-]", "")
            :lower()
      else
        return tostring(os.time())
      end
    end,
  },
  keys = {
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", desc = "Obsidian Quick Switch" },
    { "<leader>on", "<cmd>ObsidianNew<CR>",         desc = "Obsidian New Note" },
    { "<leader>ot", "<cmd>ObsidianToday<CR>",       desc = "Obsidian Today" },
    { "<leader>oy", "<cmd>ObsidianYesterday<CR>",   desc = "Obsidian Yesterday" },
    { "<leader>os", "<cmd>ObsidianSearch<CR>",      desc = "Obsidian Search" },
    { "<leader>ol", "<cmd>ObsidianLinkNew<CR>",     desc = "Obsidian Link" },
    { "<leader>of", "<cmd>ObsidianFollowLink<CR>",  desc = "Obsidian Follow Link" },
  },
}
