#!/usr/bin/env bash
export PATH=$PATH:$(ruby -rubygems -e "puts Gem.user_dir")/bin
bundle exec jekyll serve --drafts
