{
  config,
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    userName = "MaskDuck";
    userEmail = "70831061+MaskDuck@users.noreply.github.com";
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

}
