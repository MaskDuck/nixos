{
  config,
  pkgs,
  ...
}:
{
  programs.wlogout = {
    enable = true;
    style = ./nord.css;
  };
}
