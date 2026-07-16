{
  config,
  pkgs,
  ...
}:
{

  imports = [
    ./lang.nix
    ./lsp.nix
  ];
}
