return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            omnisharp = {
                cmd = { "OmniSharp" },
                enable_roslyn_analyzers = false,
                organize_imports_on_format = true,
                enable_import_completion = true,
                settings = {
                    MsBuild = {
                        enabled = true,
                        EnabledPackageAutoRestore = true,
                        loadProjectsOnDemand = false,
                        RoslynTargetsPath = {},
                    },

                    RoslynExtensionsOptions = {
                        enableImportCompletion = true,
                        enableAnalyzersSupport = true,
                        diagnosticWorkersThreadCount = 16,
                    },

                    FormattingOptions = {
                        EnableEditorConfigSupport = true,
                        OrganizeImports = true,
                        --
                        -- NewLinesForBracesInTypes = false,
                        -- NewLinesForBracesInMethods = false,
                        -- NewLinesForBracesInProperties = false,
                        -- NewLinesForBracesInAccessors = false,
                        -- NewLinesForBracesInAnonymousMethods = false,
                        -- NewLinesForBracesInControlBlocks = false,
                        -- NewLinesForBracesInAnonymousTypes = false,
                        -- NewLinesForBracesInObjectCollectionArrayInitializers = false,
                        -- NewLinesForBracesInLambdaExpressionBody = false,
                        -- NewLineForElse = false,
                        -- NewLineForCatch = false,
                        -- NewLineForFinally = false,
                        -- NewLineForMembersInObjectInit = false,
                        -- NewLineForMembersInAnonymousTypes = false,
                        -- NewLineForClausesInQuery = false,
                    },
                },

                handlers = {
                    ["textDocument/definition"] = function(...)
                        return require("omnisharp_extended").handler(...)
                    end,
                },
                keys = {
                    {
                        "gd",
                        LazyVim.has("telescope.nvim") and function()
                            require("omnisharp_extended").telescope_lsp_definitions()
                        end or function()
                            require("omnisharp_extended").lsp_definitions()
                        end,
                        desc = "Goto Definition",
                    },
                },
            },
        },
    },
}
