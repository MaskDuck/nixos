{
  config,
  pkgs,
  ...
}:
{
  programs.git = {
    enable = true;
    settings = {
      pull = {
        rebase = true;
      };
      user = {
        name = "MaskDuck";
        email = "70831061+MaskDuck@users.noreply.github.com";
      };
    };
    # userName = "MaskDuck";
    # userEmail = "";
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
  };

}
