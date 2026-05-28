{ config, pkgs, ... }: {
  home.username = "fwv";
  home.homeDirectory = "/home/fwv"
  home.stateVersion = "25.11";
  programs.home-manager.enable = true;
}
