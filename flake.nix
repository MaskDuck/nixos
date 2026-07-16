{
  description = "MaskDuck's NixOS flake";

  inputs = {
    # NixOS official package source, here using the nixos-26.05 branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    home-manager.url = "github:nix-community/home-manager";
    elephant.url = "github:abenz1267/elephant";

    walker = {
      url = "github:abenz1267/walker";
      inputs.elephant.follows = "elephant";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }@inputs:
    {
      # The host with the hostname `my-nixos` will use this configuration
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        modules = [
          ./system/configuration.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.maskduck = ./maskduck/maskduck-home.nix;
          }
        ];
      };
    };
}
