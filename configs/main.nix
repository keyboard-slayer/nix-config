{
    imports = [
        ./chromium.nix
        ./codium.nix
        ./git.nix
        ./i3.nix
        ./alacritty.nix
    ];

    xsession.enable = true;
}