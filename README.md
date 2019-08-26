# Better Services Portal
Empowering the gig economy with reputation based trust.

### Live Demo
http://better-services-portal.herokuapp.com/

### Installation & Setup
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

### Functionality
Better Services Portal lets you create, manage and delete accounts with ease. An account allows you to post job advertisements, find work or both.
#### Finding a Worker
- Post a job advertisement including a name, description, location and optional image
- Other users will make their proposals including a price and optional note
- View proposals on your job advertisement along with each workers average rating and count of jobs completed
- Accept a proposal
- Mark a job completed
- Pay your worker and give them a rating
#### Finding Work
- Browse job ads
- View the number of other proposals submitted and the average price
- Make proposals with a price and optional note
- Receive payment on job completion
#### Misc
- 'Browse Jobs' is filtered so you only see the jobs which do not yet have an accepted proposal
- 'My Proposals' gives you an at a glance understanding of your pending, accepted and rejected proposals

### History
Originally created as as assignment for the CoderAcademy GenTech coding bootcamp through collaboration with [Isaac Dedini](https://github.com/vivecuervo7) and [Vicki Coleman](https://github.com/vicnatacu)
