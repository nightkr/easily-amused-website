# Building

## Nix

In production, and when I run it, the build is managed by Nix. To start a development server, run `$ ./build-and-serve.sh` and then go to `http://localhost:4000/`. There is also a graphical editor at `http://localhost:4000/admin/`.

If you use a stupid IDE that runs everything through Bash instead of respecting the shebang line, tell it to run `$ ./serve.sh` instead.

To build a static version of the site, run `$ nix-build dev.nix`, and it should appear in `result`.

### Adding gems

If you add any gems, you need to also tell Nix about it, or bad things will happen. To do this, run the following:

```
$ nix-shell -p bundler --run "bundle install"
$ nix-shell -p bundix --run bundix
```

## Manually

If you don't want to install Nix, or you run an OS that isn't supported (Windows...) then  you can also build it by invoking Bundler directly. Please note that this means that you can't modify the dependencies, since you need to update the Nix gemset without running Nix.

You can start a development server by running

```bash
$ bundle install
$ bundle exec jekyll serve --drafts
```

 

You can also build a static site in `_site` by running

```bash
$ bundle install
$ bundle exec jekyll build
```

