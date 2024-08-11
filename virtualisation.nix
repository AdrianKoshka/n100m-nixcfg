{ config, lib, pkgs, ... }:

{
  virtualisation = {
   libvirtd = {
    enable = true;
    qemu = {
     package = pkgs.qemu_kvm;
     swtpm.enable = true;
     runAsRoot = false;
    };
   };
  };
}
