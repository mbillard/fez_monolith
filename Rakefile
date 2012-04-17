#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

FezMonolith::Application.load_tasks

# Annotate configurations
ENV['position_in_class']   = "after"
ENV['position_in_fixture'] = "after"
