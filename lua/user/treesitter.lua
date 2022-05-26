local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
        --"c_sharp", 
        --"rst", 
        --"fennel", 
        --"teal", 
        --"ql", 
        --"c", 
        --"pascal", 
        "bash", 
        "comment", 
        "html", 
        "jsdoc", 
        --"rego", 
        --"hcl", 
        --"sparql", 
        --"glimmer", 
        --"clojure", 
        --"commonlisp", 
        "cpp", 
        --"godot_resource", 
        "javascript", 
        --"cuda", 
        --"turtle", 
        "regex", 
        --"glsl", 
        "dockerfile", 
        --"svelte", 
        --"dot", 
        "rust", 
        --"ocamllex", 
        --"fusion", 
        --"css", 
        --"ledger", 
        "bibtex", 
        --"elvish", 
        --"cooklang", 
        --"solidity", 
        "python", 
        --"query", 
        "cmake", 
        --"vala", 
        --"gomod", 
        --"zig", 
        --"gowork", 
        "scheme", 
        "graphql", 
        "pioasm", 
        "ruby", 
        "typescript", 
        --"rasi", 
        --"perl", 
        "make", 
        --"prisma", 
        "scala", 
        "fish", 
        "json", 
        --"supercollider", 
        --"php", 
        "http", 
        "java", 
        "llvm", 
        "kotlin", 
        --"hocon", 
        "hjson", 
        "json5", 
        "julia", 
        "vim", 
        "norg", 
        "lua", 
        --"toml", 
        --"latex", 
        --"beancount", 
        --"erlang", 
        "r", 
        --"devicetree", 
        --"elixir",
        --"pug", 
        --"gdscript", 
        --"lalrpop", 
        --"gleam", 
        --"tsx", 
        --"surface", 
        "jsonc", 
        --"scss", 
        --"eex", 
        --"heex", 
        "yaml", 
        --"ocaml", 
        --"yang", 
        --"go", 
        --"astro", 
        --"ninja", 
        --"ocaml_interface", 
        "wgsl", 
        "nix", 
        "tlaplus", 
        --"dart", 
        --"vue" 
    },
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}