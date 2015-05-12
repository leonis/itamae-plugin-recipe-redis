# Itamae::Plugin::Recipe::Redis

[Itamae](https://github.com/itamae-kitchen/itamae) plugin to install redis.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-redis'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-redis

## Usage

### Recipe

#### package recipe

Install redis package.

```
# your recipe
include_recipe 'redis::package'
```

#### config recipe

Configure redis.

```
# your recipe
include_recipe 'redis::package'
include_recipe 'redis::config'
```

NOTE: `config` recipe depend on `package` recipe.

##### Node

```
redis:
  port: 6379
```

| name | description |
|:-----|:------------|
| redis.port | port number of redis |

#### enable recipe

Enable redis service.

```
# your recipe
include_recipe 'redis::package'
include_recipe 'redis::enable'
```

NOTE: `enable` recipe depend on `package` recipe.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-redis/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

# License

Copyright 2015 Leonis & Co.

MIT License
