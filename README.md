# Desafio Carimbo - Real Seguro Viagem CRUD

## Introduction
This is a simple CRUD application built with Ruby on Rails that was developed for the Real Seguro Viagem company. The purpose of this application is to manage User and Stamp records, allowing the user to create, read, update, and delete records from a simple interface.

## Getting Started
To get started with this application, you will need to have Ruby 3.1.3 and Rails 7.0.4 installed on your machine. Once you have Ruby and Rails installed, you can clone this repository and run the following commands:
```
bundle install
rails db:migrate
rails s
```
After running these commands, you should be able to access the application at http://localhost:3000.

## Features
This application has the following features:

* User Management: Users can be created, updated, and deleted from the application. Each user has a name and email.
* Stamp Management: Stamps can be created, updated, and deleted from the application. Each stamp has a description, value and belongs to a user.

## Testing 
This application uses RSpec for testing. To run the tests, you can run the following command:
```
bundle exec rspec
or
rspec
```
This will run all the tests in the spec directory.

## Continuous Integration
This application uses GitHub Workflows to automatically run tests on every pull request and push to the master branch. If any tests fail, the build will fail and the developer will be notified.

