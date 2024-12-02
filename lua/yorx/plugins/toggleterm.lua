return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({

      shell = "/bin/zsh",

      -- Tamaño del terminal
      size = 10,

      -- Posición del terminal
      direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'

      -- Atajo para abrir/cerrar (Ctrl + \)
      open_mapping = [[<C-ñ>]],

      -- Configuración de terminal flotante
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    })

    -- Función para configurar atajos del terminal
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
    end
  end,
}
