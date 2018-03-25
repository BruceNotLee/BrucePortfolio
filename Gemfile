source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
# gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'redis', '~> 4.0'
gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # invoke with binding.pry
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug", "~> 3.6"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Added at 2018-03-12 21:02:35 -0400 by bruce_lesko:
gem "faker", "~> 1.8"

# Added at 2018-03-17 21:55:16 -0400 by bruce_lesko:
gem "friendly_id", "~> 5.2"

# Added at 2018-03-18 21:16:56 -0400 by bruce_lesko:
gem "devise", "~> 4.4"

# Added at 2018-03-24 21:44:15 -0400 by bruce_lesko:
gem "bootstrap", "~> 4.0"

# Added at 2018-03-24 21:55:03 -0400 by bruce_lesko:
gem "jquery-rails", "~> 4.3"

gem 'dynamic_portfolio_copyright', '~> 0.1.0'
