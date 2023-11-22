# Configure redis

node.reverse_merge!(
  redis: {
    port: 6379,
    config: '/etc/redis.conf'
  }
)

port = node[:redis][:port]
execute 'configure redis port ' do
  command %(sed -i -e 's/^port [0-9]\\{1,\\}$/port #{port}/g' #{node[:redis][:config]})
  not_if %(grep -e '^port #{port}$' #{node[:redis][:config]})
end
