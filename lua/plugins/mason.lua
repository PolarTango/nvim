return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "roslyn",
      "rzls",
      "html-lsp",
    },
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
  },
}
