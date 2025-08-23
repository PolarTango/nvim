return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "roslyn",
      "rzls",
    },
    registries = {
      "github:mason-org/mason-registry",
      "github:Crashdummyy/mason-registry",
    },
  },
}
