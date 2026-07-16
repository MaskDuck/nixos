{
  config,
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [
    stylua
    nixd
    nixfmt
    pyright
    vscode-langservers-extracted
    lua-language-server
  ];
}
