{ inputs, ... }:
{
    flake.snowball = inputs.snowball.lib.mkSnowball { inherit inputs; };
}
