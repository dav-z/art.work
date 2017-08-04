# README

````
rails new artwork
cd artwork
* in gemfile -> gem "devise", gem "paperclip", "~> 5.0.0", gem 'bootstrap-sass' *
gem install bundler
bundle install
rails g devise:install
* in config/environments/development -> add 'config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }' *
* in config/routes -> add root 'static#home' *
* in app/layouts/application -> add notice and alert paragraphs *
rails g controller static
rails g devise:views
rails g devise user
* in db/migrate/(devise create user) -> add fields for :fname(.string), :lname(.string), :admin(.boolean), :bio(.text), :location(.string), :propic(paperclip.attachment), :username(.string) *
rails g scaffold art title:string image:attachment user:belongs_to
rails g scaffold job user:belongs_to title:string description:text
rails g scaffold post user:belongs_to photo:attachment caption:string
rails g scaffold discipline style:string
rails g migration UserDiscipline
rails g model user_discipline
````
