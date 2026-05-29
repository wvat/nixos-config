{ config, pkgs, ... }: {
  home.username = "fwv";
  home.homeDirectory = "/home/fwv";
  home.stateVersion = "25.11";

  programs.home-manager.enable = true;

  programs.neovim = {
  	enable = true;
	defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      # UI / colorschemes
      nerdtree
      vim-airline
      vim-airline-themes
      catppuccin-nvim
      tokyonight-nvim

      # Telescope and deps
      plenary-nvim
      telescope-nvim
      telescope-fzf-native-nvim

      # Editing / navigation
      vimtex
      harpoon2
      undotree
      vim-fugitive
      vim-be-good
      vim-tmux-navigator
      fzf-vim

      # Treesitter (Nix-managed with grammars)
      nvim-treesitter.withAllGrammars
      nvim-treesitter-context
      nvim-treesitter-textobjects

      # LSP
      nvim-lspconfig
      lsp-zero-nvim

      # Completion
      nvim-cmp
      cmp-buffer
      cmp-path
      cmp_luasnip
      cmp-nvim-lsp
      cmp-nvim-lua
      cmp-cmdline

      # Snippets
      luasnip
      friendly-snippets
    ];
  };

  xdg.configFile."nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink
        "${config.home.homeDirectory}/nixos-config/dotfiles/nvim";
      recursive = true;
  };

  programs.ghostty = {
        enable = true;
        settings = {
            theme = "Black Metal";
            font-family = "JetBrainsMono";
            font-size = 11;
        };
  };

  home.pointerCursor = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Classic";
        size = 24;
        gtk.enable = true;
        x11.enable = true;
  };

  programs.git = {
  	enable = true;
	userName = "fred";
	userEmail = "fred.vatnsdal@gmail.com";

	extraConfig = {
		init.defaultBranch = "main";
		pull.rebase = true;
		push.autoSetupRemote = true;
	};
  };
  home.packages = with pkgs; [
    ripgrep
    fd
    gcc
    tree-sitter
    nodejs
    unzip
    gnumake
    fontpreview
    
    # LSP
    clang-tools          # clangd → C, C++
    rust-analyzer        # Rust
    pyright              # Python
    lua-language-server  # Lua
    vscode-langservers-extracted  # HTML, CSS, JSON, ESLint
    taplo                # TOML
    nixd                 # Nix
    jdt-language-server  # Java
    texlab
  ];

  home.shellAliases = {
  	ll = "ls -la";
	rebuild = "sudo nixos-rebuild switch --flake ~/nixos-config#nixos";
  };
}


