{ pkgs, ... }:

{
    programs.alacritty = {
        enable = true;
        settings = {
            window = {
                padding = {y = 20; x = 20; };
            };

            font = {
                normal.family = "CaskaydiaCove Nerd Font";
                size = 18.0;
            };

            shell = { program = "${pkgs.fish}/bin/fish"; };
        };
    };
}