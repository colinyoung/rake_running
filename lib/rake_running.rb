require "rake_running/version"

module Rake
  def self.running?
    # http://stackoverflow.com/a/21866161
    File.split($0).last == 'rake'
  end
end
