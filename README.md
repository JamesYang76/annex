# README


# Requirement
Create a small rails 6.2 app with suppliers, stock and categories.\
Database is Mysql.

Supplier has many categories.
Supplier categories has many stock items.

List all categories.
when you click on a category it shows all suppliers on every supplier is a link to his stock for this category.

Doesn’t have to be pretty with css, html or fancy js.

# Secrets
Clone the `example.env` file included in the root of this project and rename it to `.env`.

Need to change database information `DB_USERNAME`,`DB_PASSWORD` and `SOCKET_PATH` which are used in `config/database.yml`


# Getting Started
This application requires:

- Ruby (see version in `.ruby-version`)
- Rails 6.1.3
- Mysql
- Bundler
- Yarn


All other dependencies will be installed for you when you run `bundle install` and `yarn install`

1. `rails db:create`
2. `rails db:migrate`
3. `rails db:seed`

Before starting rails server, run `ci-test` to execute `robocop`, `bundle-audit`, `rspec`, and `brakeman`

4. `./bin/ci-test` 
5. `rails s`



# Seed data
There are three yml file in `/db/yaml`. The data form these files are supposed to be inserted into database.
