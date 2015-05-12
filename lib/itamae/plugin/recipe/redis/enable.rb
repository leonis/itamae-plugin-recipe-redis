# Enable redis service

service_name = \
  case node[:platform]
  when 'debian', 'ubuntu'
    'redis-server'
  when 'redhat', 'fedora'
    'redis'
  else
    fail "Sorry, your platform(#{node[:platform]}) is not supported yet."
  end

service service_name do
  action [:enable, :start]
end
