# Better Beehive


### Project Description

Better Beehive is a ReactJS-Rails app that allows users with "different-abilities" to find businesses that are accessible to them, based on user-submitted reviews.

### Note: This repository is the Rails API for the ReactJS frontend.


### Installation
To install the app to your local computer run

    git clone https://github.com/tjoye20/better-beehive.git

##### Install the necessary gems

    bundle install

##### Create, migrate, and seed the database

    bundle exec rake db:create
    bundle exec rake db:migrate
    bundle exec rake db:seed

##### To launch the app

    rails s
