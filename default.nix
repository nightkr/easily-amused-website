{ bundlerEnv, stdenv }:
let env = bundlerEnv {
    name = "easily-amused-website-env";
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
};
in stdenv.mkDerivation {
    name = "easily-amused-website";
    src = ./.;
    buildInputs = [ env ];
    buildCommand =
        ''
            bundle exec jekyll build --source $src --destination $out
        '';
}
