{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    # --- python
    python3
    lua
  ];
}
