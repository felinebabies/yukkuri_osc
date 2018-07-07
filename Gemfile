# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"
gem 'osc-ruby'
if RUBY_PLATFORM =~ /mingw32/ then
    gem 'eventmachine', git: 'https://github.com/eventmachine/eventmachine'
else
    gem 'eventmachine'
end