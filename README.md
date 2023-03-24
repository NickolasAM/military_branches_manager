# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## User Stories

User Story 1, Military Branches Index 

For each Military Branch
As a visitor
When I visit '/military_branches'
Then I see the name of each military branch record in the system

User Story 2, Military Branches Show 

As a visitor
When I visit '/military_branches/:id'
Then I see the parent with that id including the military branches's attributes
(data from each column that is on the Military Branches table)
