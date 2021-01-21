{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {};
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "dandart-amqp";
  src = ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    homepage = https://projectchaplin.com;
    license = "AGPL-3.0";
  };
}