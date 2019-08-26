### Live Demo
http://better-services-portal.herokuapp.com/

## Installation & Setup
Prerequisites & Versions Tested With
* ruby v2.6.3
* bundler v1.17.3
* PostgreSQL v11.3

Run the following commands in order.
`git clone https://github.com/loui7/services-portal.git`
`cd services-portal`
`bundle install`
`cp ./config/database.example.yml ./config/database.yml`
You will need to edit database.yml to correspond with your database credentials, then proceed.
`rails db:create`
`rails db:schema:load`

(OPTIONAL: This loads example data into your database.)
`rails db:seed`
