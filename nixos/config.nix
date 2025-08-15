{ config, lib, pkgs, ... }:

{
  imports = [
    <nixos-wsl/modules>
  ];

  time.timeZone = "Asia/Kolkata";
  wsl.enable = true;
  wsl.defaultUser = "nixos";

  system.stateVersion = "25.05";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
        git
        curl
        gh
        helix
        starship
  ];
}
