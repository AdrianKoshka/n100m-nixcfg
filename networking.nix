{ config, lib, pkgs, ... }:

{
    networking = {
        hostName = "n100m"; # Define your hostname.
        domain = "lan";
        firewall.enable = false;
        networkmanager.enable = false;
        useDHCP = false;
    };
}