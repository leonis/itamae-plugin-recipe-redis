# Enable redis service

include_recipe "package"

service_name = \
  case node[:platform]
  when 'debian', 'ubuntu'
    'redis-server'
  when 'redhat', 'fedora', 'amazon'
    'redis'
  else
    fail "Sorry, your platform(#{node[:platform]}) is not supported yet."
  end

service service_name do
  action [:enable, :start]
end
