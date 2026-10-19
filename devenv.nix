{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  env.name = "seg_ape3";
  services = {
    mysql = {
      enable = true;
      package = pkgs.mariadb;
      initialDatabases = [
        {
          name = "ape_mask_2h";
          schema = "./sql/esquema.sql";
        }
      ];
    };
    postgres = {
      enable = true;
      package = pkgs.postgresql;
      initialDatabases = [
        {
          name = "seg_ape3";
        }
      ];
    };
  };
}
