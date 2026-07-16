{
  config,
  pkgs,
  ...
}:
{
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./extra-kitty.conf;
  };
}
