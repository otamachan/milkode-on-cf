# -*- coding: utf-8 -*-
require 'milkode/cli'
require 'fileutils'

# Add pacakges
open("./PACKAGES") do |f|
  f.each do |line|
    repo, branch, dir = line.split
    CLI.start(["add", repo, "-b", branch, "-n", dir])
    #FileUtils.rm_rf File.join(ENV['MILKODE_DEFAULT_DIR'], 'packages/git', dir)
  end
end
