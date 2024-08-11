{ config, lib, pkgs, ... }:

{
    services = {
    fstrim.enable = true;
    fwupd.enable = true;
    openssh = { 
        startWhenNeeded = true;
        enable = true;
        settings = {
            PasswordAuthentication = false;
            PermitRootLogin = "no";
        };
    };
  };
}