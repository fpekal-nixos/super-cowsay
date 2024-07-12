{
	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
	};

	outputs =
	{ nixpkgs, self }:
	let
		system = "x86_64-linux";
		pkgs = nixpkgs.legacyPackages.${system};
	in
	{
		packages.${system} = {
			default = pkgs.callPackage ./super-cowsay.nix {};
		};

		overlays.default = final: prev: {
			super-cowsay = self.packages.${system}.default;
		};
	};
}
