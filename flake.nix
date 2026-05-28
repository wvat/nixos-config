{
    description = "NixOS Sys Config";

    inputs = {
    	nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    	nixpkgs_unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    	home-manager.url = "github:nix-community/home-manager";
    };

    outputs = inputs@{ self, nixpkgs, nixpkgs_unstable, home-manager, ...}:
    	let
		system = "x86_64-linux";
	in {
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
		   inherit system;

		   specialArgs = {
		       inherit nixpkgs_unstable;
		   };
		   modules = [
			./configuration.nix
			home-manager.nixosModules.home-manager
			{
			    home-manager.useGlobalPkgs = true;
			    home-manager.useUserPackages = true;
			    home-manager.extraSpecialArgs = { inherit inputs; };
			    home-manager.users.jdoe = ./home.nix;
			}
		   ];
		};
	};
}
