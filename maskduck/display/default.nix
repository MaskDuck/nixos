{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    nerd-fonts.departure-mono
    quickshell
    bibata-cursors
    swaybg
    grim
    slurp
  ];
}
