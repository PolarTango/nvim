return {
  "seblyng/roslyn.nvim",
  dependencies = {
    "tris203/rzls.nvim",
    config = true,
  },
  ft = { "cs", "razor" },
  -- @module 'roslyn.config'
  config = function()
    -- local mason_registry = require("mason-registry")

    local rzls_path = vim.fn.expand("$MASON/packages/rzls/libexec")
    local cmd = {
      "roslyn",
      "--stdio",
      "--logLevel=Information",
      "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
      "--razorSourceGenerator=" .. vim.fs.joinpath(rzls_path, "Microsoft.CodeAnalysis.Razor.Compiler.dll"),
      "--razorDesignTimePath=" .. vim.fs.joinpath(rzls_path, "Targets", "Microsoft.NET.Sdk.Razor.DesignTime.targets"),
      "--extension",
      vim.fs.joinpath(rzls_path, "RazorExtension", "Microsoft.VisualStudioCode.RazorExtension.dll"),
    }

    vim.lsp.config("roslyn", {
      cmd = cmd,
      handlers = require("rzls.roslyn_handlers"),
      settings = {
        ["csharp|inlay_hints"] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = false,
          csharp_enable_inlay_hints_for_implicit_variable_types = false,

          csharp_enable_inlay_hints_for_lambda_parameter_types = false,
          csharp_enable_inlay_hints_for_types = false,
          dotnet_enable_inlay_hints_for_indexer_parameters = false,
          dotnet_enable_inlay_hints_for_literal_parameters = false,
          dotnet_enable_inlay_hints_for_object_creation_parameters = false,
          dotnet_enable_inlay_hints_for_other_parameters = false,
          dotnet_enable_inlay_hints_for_parameters = false,
          dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = false,
          dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = false,
          dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = false,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = true,
        },
      },
    })
    vim.lsp.enable("roslyn")
  end,
  init = function()
    -- We add the Razor file types before the plugin loads.
    vim.filetype.add({
      extension = {
        razor = "razor",
        cshtml = "razor",
      },
    })
  end,
}
