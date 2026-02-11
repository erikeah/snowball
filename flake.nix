{
  description = "Create a snowball of flakes.";

  inputs = { };

  outputs =
    { ... }: {
      lib = import ./lib.nix { };
      flakeModules = rec {
          snowball = ./flake-module.nix;
          default = snowball;
      };
    };
}
