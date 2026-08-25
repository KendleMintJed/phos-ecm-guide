local lsp_settings = vim.json.decode(vim.system({ "devenv", "lsp", "--print-config" }):wait().stdout)

vim.lsp.config("nixd", {
  cmd = { "devenv", "lsp" },
  filetypes = { "nix" },
  root_dir = vim.uv.cwd(),
  settings = lsp_settings,
})
