{ config, pkgs, ... }:

{
    imports = [
        ./configs/main.nix
    ];

    # Home Manager needs a bit of information about you and the
    # paths it should manage.
    home.username = "keyboard-slayer";
    home.homeDirectory = "/home/keyboard-slayer";
    fonts.fontconfig.enable = true;

    nixpkgs.config = {
        allowUnfree = true;
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        TERMINAL = "alacritty";
    };

    home.packages = with pkgs; [
        discord
        rustup
        go
        fish
        unzip
        wget
        ghidra
        pwndbg
        nmap
        qemu_kvm
        burpsuite
        mpv
        pwntools
        neovim
        (pkgs.nerdfonts.override { fonts = [ "CascadiaCode" ]; })
    ];


    # This value determines the Home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new Home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update Home Manager without changing this value. See
    # the Home Manager release notes for a list of state version
    # changes in each release.
    home.stateVersion = "22.05";

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}
