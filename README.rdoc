# Mejorandola iOS App Backend

Backend of one of the demos presented at iOS Development course by [Mejorando.la](https://mejorando.la/) 

## Requirements

- Ruby 2.0
- mysql running locally
$ sudo apt-get install mysql-server
$ sudo apt-get install libmysqlclient-dev

## Running on Ubuntu using Vagrant
Install RVM https://rvm.io/rvm/install
```
$ \curl -L https://get.rvm.io | bash
$ source /home/vagrant/.rvm/scripts/rvm
$ rvm install ruby-2.0.0-p247
$ rvm use ruby-2.0.0-p247@mejorandola --create
```

## Getting Started

If you created the database already, just do $rake db:migrate
```
$ git clone git@github.com:maggit/mejorandolaios-backend.git
$ cd mejorandolaios-backend
$ bundle install
$ rake db:create db:migrate
$ rails s
```

## Points of Interest

- http://localhost:3000/admin
- `app/api/*.rb`

## Deployment

[Heroku](http://www.heroku.com) is the easiest way to get your app up and running. For full instructions on how to get started, check out ["Getting Started with Rails 3.x on Heroku"](https://devcenter.heroku.com/articles/rails3).

Once you've installed the [Heroku Toolbelt](https://toolbelt.heroku.com), and have a Heroku account, enter the following commands from the project directory:

```
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
```
Don't forget to add 'pg' gem to your Gemfile you will need it for Postgres, look for the following line and remove the comment:
```
gem 'pg', group: :production
```

### Admin panel

Here you can admin all the content, add more courses, manage users, etc., feel free to explore.
http://0.0.0.0:3000/admins

### API

```
GET http://localhost:3000/api/courses/all
```

- **success** Returns true if the request was successful.
- **message** A success message.
- **data** An array of hashes that contains courses information.


## Contact

Raquel Hernandez

- http://github.com/maggit
- http://twitter.com/maggit
- raquel@raquelhernandez.net

## License

mejorandolaios-backend is available under the MIT license. See the LICENSE file for more info.
