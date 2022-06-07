{ pkgs, config, ...}: {
    programs.git = {
        enable = true;
        userName = "Keyboard Slayer";
        userEmail = "dalcjor@libmail.eu";
        extraConfig = {
            init = {
                defaultBranch = "main";
            };
        };
    };
}