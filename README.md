# README

In Align office, we are doing hot-desking, where there is no assigned desk for staff. They are allowed to sit anywhere in the office. Unfortunately, some staff needs to sit near their project team, and most of the time, they can’t get to sit together.
Hot-desk app is an app to allow staff to book their desks and find where their colleagues are sitting.

* Ruby version
2.5.3p105

* Rails version
5.2.2.1

* System dependencies
|Dependencies|port|username|password|
|---|---|---|---|
|mysql|3306|root|root|
|redis|6379|||

* Configuration
```shell
export USERNAME=your_mysql_username
export PASSOWRD=your_mysql_password
```

* Database creation
```shell
rake db:create
```

* Database initialization

* How to run the test suite
```shell
rspec
```
Only the spec/controllers/users_controller.rb is half-way, the others is TODO.

* Development instructions
```shell
rails s
```
