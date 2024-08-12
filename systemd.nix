{ config, lib, pkgs, ...}:

{
 systemd = {
  network = {
   enable = true;
   networks = {
    "50-enp1s0" = {
     matchConfig.Name = "enp1s0";
     domains = [ "lan" ];
     networkConfig = {
      DHCP = "yes";
      LLDP = true;
      EmitLLDP = true;
     };
    };
   };
  };
 };
}
