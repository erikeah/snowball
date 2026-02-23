{ ... }:
{
  mkSnowball = { inputs, ... }:
  {
      roll = args: flake: let
          mergedInputs = inputs // args.inputs;
          patchedInputs = mergedInputs // { self.inputs = mergedInputs; };
          in flake patchedInputs;
  };
}
