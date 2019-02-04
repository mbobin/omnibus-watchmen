#
# Copyright 2019 YOUR NAME
#
# All Rights Reserved.
#

name "watchmen"
maintainer "Marius Bobin"
homepage "https://mbobin.me"

# Defaults to C:/watchmen on Windows
# and /opt/watchmen on all other platforms
install_dir "#{default_root}/#{name}"

build_version Omnibus::BuildVersion.semver
build_iteration 1


# Creates required build directories
dependency "preparation"
dependency 'git'

# watchmen dependencies/components
# dependency "somedep"
dependency "ruby"
dependency "rubygems"
dependency "watchmen"

# Version manifest file
dependency "version-manifest"

exclude "**/.git"
exclude "**/bundler/git"
