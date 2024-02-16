{ config, lib, pkgs, test-arg, ... }:

{
  programs.kitty.enable = test-arg;

  programs.home-manager.enable = true;

  home.stateVersion = "23.11";
}
