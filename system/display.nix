{
  config,
  pkgs,
  ...
}:
{

  services.xserver.enable = true;

  # Enable the Cinnamon Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    package = pkgs.kdePackages.sddm;
    extraPackages = with pkgs; [
      kdePackages.qtmultimedia # Required for video backgrounds/audio
    ];

    theme = "sddm-astronaut-theme";
  };
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.cinnamon.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  programs.hyprland.enable = true;
  # I don't need waybar as of now
  # programs.waybar.enable = true;
  environment.systemPackages = with pkgs; [
    wl-clipboard
    (sddm-astronaut.override {
      embeddedTheme = "astronaut"; # or any other theme
    })
  ];
}
