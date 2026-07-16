{
  config,
  pkgs,
  ...
}:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      config = "cd /home/maskduck/dots && nvim /home/maskduck/dots";
      hyprconf = "nvim ~/.config/hypr/hyprland.lua";
      rebuild = "sudo nixos-rebuild switch --flake /home/maskduck/dots";
      hmswitch = "home-manager switch --flake /home/maskduck/dots";
    };
    bashrcExtra = builtins.readFile ./extra.bashrc;
  };
}
