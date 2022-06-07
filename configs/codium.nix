{ pkgs, config, ... }: {
    programs.vscode = {
        enable = true;
	    package = pkgs.vscodium;
        extensions = with pkgs.vscode-extensions; [
            bbenoist.nix
            llvm-vs-code-extensions.vscode-clangd
            golang.go
            ms-python.python
	        vscodevim.vim
        ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                name = "material-icon-theme";
                publisher = "PKief";
                version = "4.18.0";
                sha256 = "af4ec8730bc9d08919dc2b6667d8b39bedb586083066e230ecec0d59eced1da3";
            }
            {
                name = "ayu";
                publisher = "teabyii";
                version = "1.0.5";
                sha256 = "f8816a8169622abfaa8c12e6425cc5e385cd6cdec1af96b5d7dbfd5809d93aee";
            }
            {
                name = "rust";
                publisher = "rust-lang";
                version = "0.7.8";
                sha256 = "637dda81234c5666950907587799b3c2388ae494d94edcd39264864d0ad2360d";
            }
            {
                name = "atom-keybindings";
                publisher = "ms-vscode";
                version = "3.0.9";
                sha256 = "41ecbbe48ae96f763e5276dffa9a534d5a14dd71805490fca173795ca2615812";
            }
        ];

        userSettings = {
            "workbench.iconTheme" = "material-icon-theme";
            "editor.mouseWheelZoom" = true;
            "keyboard.dispatch" = "keyCode";
            "workbench.colorTheme" = "Ayu Dark";
            "window.menuBarVisibility" = "toggle";
            "editor.fontFamily" = "'CaskaydiaCove Nerd Font'";
        };
    };
}
