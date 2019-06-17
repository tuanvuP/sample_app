source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "bcrypt"
gem "bootsnap", require: false
gem "bootstrap-sass"
gem "bootstrap-will_paginate"
gem "carrierwave"
gem "coffee-rails"
gem "config"
gem "faker"
gem "i18n-js"
gem "jbuilder"
gem "jquery-rails"
gem "mini_magick"
gem "puma"
gem "rails"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails"
gem "turbolinks"
gem "uglifier"
gem "will_paginate"

group :development, :test do
  gem "byebug", platform: :mri
  gem "sqlite3"
end

group :development do
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console"
end

group :test do
  gem "guard"
  gem "guard-minitest"
  gem "minitest"
  gem "minitest-reporters"
  gem "rails-controller-testing"
end

group :production do
  gem "fog"
  gem "pg"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
