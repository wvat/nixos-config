{
    description = "NixOS Sys Config";

    inputs = {
    	nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    	nixpkgs_unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    };

    outputs = { self, nixpkgs, nixpkgs_unstable, ...}:
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
		   ];
		};
	};
}
