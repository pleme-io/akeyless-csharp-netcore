{
  description = "Akeyless C# SDK - auto-generated .NET client for the Akeyless API";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    (import "${inputs.substrate}/lib/repo-flake.nix" {
      inherit (inputs) nixpkgs flake-utils;
    }) {
      self = inputs.self;
      language = "csharp";
      description = "Akeyless C# SDK - auto-generated .NET client for the Akeyless API";
    };
}
