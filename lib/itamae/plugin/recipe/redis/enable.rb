# Enable redis service

service_name = \
  case node[:platform]
  when 'debian', 'ubuntu'
    service 'redis-server' do
      action [:enable, :start]
    end
  when 'redhat', 'fedora'
    service 'redis' do
      action [:enable, :start]
    end
  else
    fail "Sorry, your platform(#{node[:platform]}) is not supported yet."
  end

service service_name do
  action [:enable, :start]
end
