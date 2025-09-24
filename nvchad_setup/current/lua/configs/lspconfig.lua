-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"
local on_attach = nvlsp.on_attach
local on_init = nvlsp.on_init
local capabilities = nvlsp.capabilities

-- Pyright (Python Language Server)
lspconfig.pyright.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    -- Disable formatting from pyright, we'll use ruff/black
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
        typeCheckingMode = "standard", -- "off", "basic", "standard", "strict"
        autoImportCompletions = true,
        -- Additional type checking features
        reportGeneralTypeIssues = "warning",
        reportOptionalMemberAccess = "warning",
        reportOptionalCall = "warning",
        reportOptionalIterable = "warning",
        reportOptionalContextManager = "warning",
        reportOptionalOperand = "warning",
        reportTypedDictNotRequiredAccess = "warning",
        reportPrivateImportUsage = "warning",
        reportUnboundVariable = "error",
        reportUndefinedVariable = "error",
        reportDuplicateImport = "warning",
        reportInvalidTypeForm = "error",
        reportMissingImports = "error",
        reportMissingTypeStubs = "information",
        reportImportCycles = "warning",
        reportUnusedImport = "warning",
        reportUnusedClass = "warning",
        reportUnusedFunction = "warning",
        reportUnusedVariable = "warning",
        reportUnnecessaryTypeIgnoreComment = "warning",
        reportMatchNotExhaustive = "warning",
        reportShadowedImports = "warning",
        reportIncompatibleMethodOverride = "warning",
        reportIncompatibleVariableOverride = "warning",
        reportInconsistentConstructor = "error",
        reportOverlappingOverload = "warning",
        reportMissingParameterType = "none",
        reportUnnecessaryComparison = "warning",
        reportUnnecessaryCast = "warning",
        reportAssertAlwaysTrue = "warning",
      },
    },
  },
  -- Auto-detect virtual environment
  on_init = function(client)
    on_init(client)
    -- Detect and use virtual environment if present
    local venv = vim.fn.finddir("venv", vim.fn.getcwd() .. ";")
    if venv ~= "" then
      local python_path = vim.fn.getcwd() .. "/" .. venv .. "/bin/python"
      client.config.settings.python.pythonPath = python_path
    elseif vim.fn.executable("python3") == 1 then
      client.config.settings.python.pythonPath = vim.fn.exepath("python3")
    elseif vim.fn.executable("python") == 1 then
      client.config.settings.python.pythonPath = vim.fn.exepath("python")
    end
  end,
}

-- Ruff (Fast Python Linter)
lspconfig.ruff_lsp.setup {
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    -- Ruff can handle formatting
    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
  capabilities = capabilities,
  init_options = {
    settings = {
      -- Ruff settings
      args = {
        "--line-length=88",  -- Black's default
        "--select=E,F,W,C90,I,N,D,UP,YTT,ANN,ASYNC,S,BLE,B,A,COM,C4,DTZ,T10,EM,FA,ISC,ICN,LOG,G,INP,PIE,PT,Q,RSE,RET,SLOT,SIM,TID,TCH,INT,ARG,PTH,TD,FIX,ERA,PD,PGH,PL,TRY,FLY,NPY,PERF,FURB,RUF",
        "--ignore=E501,E203,E266,D100,D101,D102,D103,D104,D105,D106,D107",
      },
    },
  },
}

lspconfig.rust_analyzer.setup({
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
    capabilities = capabilities,
})

lspconfig.dartls.setup({
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true
    client.server_capabilities.documentRangeFormattingProvider = true
  end,
    capabilities = capabilities,
})

lspconfig.html.setup{
  on_attach = function(client, bufnr)
    client.server_capabilities.document_formatting = true
    on_attach(client, bufnr)
  end,
    capabilities = capabilities
}

local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports"
    }
  }
})
