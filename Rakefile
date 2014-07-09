desc "install gem"
task :install do
puts 'install'
sh('bundle install')
end

desc 'run spec'
task :spec =>:install do
#bundle install
sh('rspec ./spec')
puts 'spec'
end
