namespace :canvas do
  unless ARGV.any? {|a| a =~ /^gems/} # Don't load anything when running the gems:* tasks

  vendored_cucumber_bin = Dir["#{Rails.root}/vendor/{gems,plugins}/cucumber*/bin/cucumber"].first
  $LOAD_PATH.unshift(File.dirname(vendored_cucumber_bin) + '/../lib') unless vendored_cucumber_bin.nil?

  begin
    require 'cucumber/rake/task'

    desc "wrapper for all @canvas scenaria"

    Cucumber::Rake::Task.new(:cukes) do |t|
      t.fork = true
      t.cucumber_opts = ['--format',(ENV['CUCUMBER_FORMAT'] || 'pretty')]
      t.cucumber_opts = ['--tags', '@canvas']
    end

  rescue LoadError
    desc 'cucumber rake task not available (cucumber not installed)'
    task :cukes do
      abort 'Cucumber rake task is not available. Be sure to install cucumber as a gem or plugin'
    end
  end
  end
end
