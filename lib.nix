{ ... }:
{
  mkSnowball = { inputs, ... }:
  {
      roll = args: flake: let mergedInputs = inputs // args.inputs; in flake mergedInputs;
  };
}
