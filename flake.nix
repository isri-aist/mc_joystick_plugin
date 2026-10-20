{
  description = "mc-joystick-plugin";

  inputs.mc-rtc-nix.url = "github:mc-rtc/nixpkgs";

  outputs =
    inputs:
    inputs.mc-rtc-nix.lib.mkFlakoboros inputs (
      { lib, ... }:
      {
        overrideAttrs.mc-joystick-plugin = {
          src = lib.cleanSource ./.;
          dontWrapQtApps = true; # FIXME
        };
      }
    );
}
