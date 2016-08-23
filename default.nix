{ bundlerEnv, jekyll }:
bundlerEnv {
    name = "easily-amused-website";
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
}
