desc "install gem"
task :install do
puts 'install'
sh('bundle install')
end

desc 'run spec'
task :spec =>:install do
sh('rspec ./spec')
end

desc 'run spec_user'
task :spec_user =>:install do
sh('./server_control -p 1234 -t 20 >/dev/null &')
sh('bundle exec rspec ./spec_user')
sh("kill -9 `ps |grep rackup|grep -v grep| awk '{print $1}'`")
end
