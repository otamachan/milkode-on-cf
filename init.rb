# -*- coding: utf-8 -*-
require 'milkode/cli'
require 'fileutils'

FileUtils.mkdir_p ENV['MILKODE_DEFAULT_DIR']
# Initialize database
CLI.start("init".split)
# Copy milkweb.yaml
FileUtils.cp('./milkweb.yaml', ENV['MILKODE_DEFAULT_DIR'])
