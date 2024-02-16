{ config, lib, pkgs, ... }:

{
  boot = {
    initrd.availableKernelModules =
      [ "ahci" "xhci_pci" "virtio_pci" "sr_mod" "sd_mod" "virtio_blk" ];
    kernelModules = [ "kvm-intel" ];
  };

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/8fe214be-ec45-4449-ae56-47d1c5987d00";
    fsType = "btrfs";
    options = [ "subvol=root" ];
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/3EC0-6A22";
    fsType = "vfat";
  };

  swapDevices = [ ];

  networking.useDHCP = lib.mkDefault true;
}
