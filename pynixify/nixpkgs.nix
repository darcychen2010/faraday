# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ overlays ? [ ], ... }@args:
let
  pynixifyOverlay = self: super: {
    python2 = super.python2.override { inherit packageOverrides; };
    python27 = super.python27.override { inherit packageOverrides; };
    python3 = super.python3.override { inherit packageOverrides; };
    python35 = super.python35.override { inherit packageOverrides; };
    python36 = super.python36.override { inherit packageOverrides; };
    python37 = super.python37.override { inherit packageOverrides; };
    python38 = super.python38.override { inherit packageOverrides; };
    python39 = super.python39.override { inherit packageOverrides; };
    python310 = super.python310.override { inherit packageOverrides; };
  };

  nixpkgs =

    builtins.fetchTarball {
      url =
        "https://github.com/infobyte/nixpkgs/archive/de43d14a2dee45e6ada58f4eca867804c3bca151.tar.gz";
      sha256 = "0xgsldyr5y3k5mfgq592ynnm8jy4j9b4clmfma266q0fy1bpyzkp";
    };

  packageOverrides = self: super: {
    apispec-webframeworks =
      self.callPackage ./packages/apispec-webframeworks { };

    bidict = self.callPackage ./packages/bidict { };

    bleach = self.callPackage ./packages/bleach { };

    faraday-agent-parameters-types =
      self.callPackage ./packages/faraday-agent-parameters-types { };

    faraday-plugins = self.callPackage ./packages/faraday-plugins { };

    faradaysec = self.callPackage ./packages/faradaysec { };

    filedepot = self.callPackage ./packages/filedepot { };

    filteralchemy-fork = self.callPackage ./packages/filteralchemy-fork { };

    flask = self.callPackage ./packages/flask { };

    flask-classful = self.callPackage ./packages/flask-classful { };

    flask-kvsession-fork = self.callPackage ./packages/flask-kvsession-fork { };

    flask-limiter = self.callPackage ./packages/flask-limiter { };

    flask-login = self.callPackage ./packages/flask-login { };

    flask-security-too = self.callPackage ./packages/flask-security-too { };

    flask-sqlalchemy = self.callPackage ./packages/flask-sqlalchemy { };

    flask-wtf = self.callPackage ./packages/flask-wtf { };

    marshmallow-sqlalchemy =
      self.callPackage ./packages/marshmallow-sqlalchemy { };

    simplekv = self.callPackage ./packages/simplekv { };

    sqlalchemy = self.callPackage ./packages/sqlalchemy { };

    twisted = self.callPackage ./packages/twisted { };

    werkzeug = self.callPackage ./packages/werkzeug { };

  };

in import nixpkgs (args // { overlays = [ pynixifyOverlay ] ++ overlays; })
