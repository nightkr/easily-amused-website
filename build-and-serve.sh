#!/usr/bin/env nix-shell
#!nix-shell dev.nix -i bash --pure
$out/bin/jekyll serve --drafts
