# Install redis by package.

redis_version = \
  if !node[:redis].nil? && !node[:redis][:version].nil?
    node[:redis][:version]
  else
    nil
  end

case node[:platform]
when 'debian', 'ubuntu'
  package 'redis-server' do
    version redis_version unless redis_version.nil?
  end
when 'redhat', 'fedora', 'amazon'
  package 'redis' do
    version redis_version unless redis_version.nil?
    options '--enablerepo=epel'
  end
else
  fail "Sorry, your platform(#{node[:platform]}) is not supported yet."
end
