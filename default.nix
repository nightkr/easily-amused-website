{ bundlerEnv, stdenv, fetchgitLocal }:
let env = bundlerEnv {
    name = "easily-amused-website-env";
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
};
in stdenv.mkDerivation {
    name = "easily-amused-website";
    src =
        if builtins.pathExists ./.git then
            fetchgitLocal ./.
        else # Not in a git repo, for example it was from a dumped tarball
            ./.;
    buildInputs = [ env ];
    buildCommand =
        ''
            bundle exec jekyll build --source $src --destination $out
        '';
}
