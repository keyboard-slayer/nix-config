{ pkgs, config, ... }: {
    programs.chromium = {
        enable = true;
        extensions = [
            "cjpalhdlnbpafiamejdnhcphjbkeiagm"
            "eimadpbcbfnmbkopoojfekhnkhdbieeh"
            "mnjggcdmjocbbbhaepdhchncahnbgone"
        ];
    };
}