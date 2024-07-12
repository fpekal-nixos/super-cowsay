{ pkgs ? import <nixpkgs> {}, ... }:
pkgs.stdenv.mkDerivation {
	pname = "super-cowsay";
	version = "1.0";

	cowsay = pkgs.cowsay;
	ponysay = pkgs.ponysay;

	buildInputs = [ pkgs.cowsay pkgs.ponysay pkgs.makeWrapper pkgs.coreutils ];

	src = ./super-cowsay.sh;

	phases = [ "installPhase" "postFixup" ];

	installPhase = ''
		mkdir -p $out/bin

		cp $src $out/bin/super-cowsay
	'';

	postFixup = ''
		wrapProgram $out/bin/super-cowsay \
			--set PATH ${pkgs.lib.makeBinPath [
				pkgs.cowsay
				pkgs.ponysay
				pkgs.coreutils
			]}
	'';
}
