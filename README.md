# Readme

## Links
[App](placeholder)
[Repository](https://github.com/loui7/services-portal)

## Identify the problem you’re trying to solve by building this particular marketplace app, and why it is a problem that needs solving
The ‘gig economy’ has rapidly grown in recent years as technology has enabled people to directly connect with each other and exchange their services. This growth is driven by the efficiency that cutting out the middleman by automating it with technology allows. Services Portal will use technology in this way specifically to connect businesses with short term jobs and the workers who want to complete them.

Other marketplaces for short term jobs that currently exist and are particularly popular like craigslist and gumtree don’t have review systems which directly demonstrate the legitimacy of a participant in a transaction.

Services Portal would have such a ratings system, incentivising workers to do the best job they can so they’ll be picked for more jobs in the future, and providers to treat the workers well so more workers will bid on their jobs in the future.

## Describe the network infrastructure the app may be based on
Heroku is a managed application hosting architecture service. That means they handle all of the physical hardware set-up and basic operating system management. In the case of Heroku, they have on their servers a lot of small virtual servers called ‘dynos’. When you create a project on Heroku is is assigned one of these virtual servers and that is where your application runs and where requests sent to your application URL will be routed.

## Identify and describe the software to be used in your app
* Stripe - 3rd party payment processor, detailed below
* Cloudinary - 3rd party image hosting service, detailed below
* Devise - 3rd party user authentication, detailed below
* Rspec - testing suite, detailed below
* Ruby on Rails, HTML, CSS, JavaScript - logic, presentation and functionality of website
* PostgreSQL - database, detailed below

## Detail any third party services that your app will use
* Stripe
  * We are using Stripe in our Service Portal app to enable user_owners to pay user_providers for their work. It a future iteration we would have Stripe also pay Service Portal a percentage of that payment to fulfil the revenue side of Service Portal.
  * Provides security online payment for business. 
  * Satisfies the security requirements for businesses, meaning businesses don’t have the headache of meeting the requirements themselves. SCA requirements met to minimize the number of times a customer need to authenticate (3D Secure2)
  * Customer’s can create a wallet to securely store their data, if they so wish.  
  * Stripe minimizes risks; reduces fraud and increases Credit Card company acceptance of payments through metadata compliances that allow the Credit companies to efficiently accept or decline transactions.
  * Stripe will take payments, pay third parties or as in our case pay percentage to our business platform. 
  * Stripe advises it works across different browsers and screen sizes and with all major credit cards.
  * Stripe has a Custom UI kits that allows you to customise the payment input form. 
  * It will track payments.  It can handle once of payments and scheduled or subscription payments.
  * Allows you to create an in-person Point-of-sale terminal to accept payment in person and at site, ie, at the customer location for a job performed (like build a fence, or repairs to a house) a customer location. 
  * Stripe has platforms that help businesses with infrastructure to enable them to get started, i.e, like billing, integrate stripe into your business, allows for easier resolution of disputes. 
  * Provides detailed reporting that integrates with your Company’s accounting, that can also be customized and personalized to a business (i.e; logos, colour, styling).  The detailed reports hold the details you need for easier and simpler reconciliation, no more cross reconciliation needed with your bank and credit card statements.
  * Stripe offer reporting and insights for different currencies, payments compliant for different countries.

* Cloudinary
  * We are using Cloudinary in our Service Portal app to enable user_owners to include pictures when creating their job if this better illustrates the work they need proposals on.
  * Cloudinary gives you once place to store all your assets, images, audio, video, and documents.  Also pdf, psd, gif, 3D are just some of the other assets types it can store.
  * Enables access across computer, phone and tablet.
  * Asset Libraries can be accessed directly when using Adobe Photoshop, InDesign, or Illustrator.
  * Cloudinary allows your users to upload images from anywhere, on any device, when you include their upload widget in your website or App.
  * Cloudinary allows you to include an upload preview, progress bar, and an ability to upload multiple files at once.
  * Cloudinary offers a lot of Add-ons to improve performance, optimizing search, improve user interactions with your application, take a look as their will be an Add-on to suit your businesses’ needs.

* Devise
  * We are using Devise on our Services Portal application to handle user registration, authentication, and securely storing this sensitive information. 
  * Devise allows you to customize to your needs through modules.
  * It allows you to set up an asynchronous email delivery system.
  * Allows you to setup password strength, allow you to add it to client side.

* Rspec
  * We are using Rspec for testing of Services Portal.
  * Rspec is written in ruby to test ruby code.  It is a more simple testing platform as you are able to use plain speech term to formulate your test code methods.
  * You could also use mini.test to test your ruby code. Tests are constructed in a slightly more difficult format but still in a format that you can become accustomed to and use if so desired.
  * I have come to understand that rspec is extensively used by programmers to test their ruby code or applications written in ruby on rails.

## Identify the database to be used in your app and provide a justification for your choice
PostgreSQL. It was the only choice available as it's the only database we are all as a team familiar with.

## Identify and describe the production database setup (i.e. postgres instance)


## Describe the architecture of your app
### Models/Tables
* User
  * The user model will handle user authentication, and own both services and proposals The user will exist to provide an anchor for the functions of the website.
* Service
  * The service will exist to define a request from a user. This will allow other users to issue proposals to perform the job for a price.
* Proposal
  * Proposals will belong to both users and services. These will be displayed to the owner of a service, after which the owner may accept a proposal.

### Routes
We opted to use a nested resources approach to maintain a sensible approach that reflected the relationships between services and proposals. This means that we enforce presence and naming for parameters required by controller actions.

## Explain the different high-level components (abstractions) in your app


## Describe (in general terms) the data structure of marketplace apps that are similar to your own (eBay, Airbnb)


## Provide user stories for your app
* User
  * I can create an account, log in and out, edit and cancel my account
* Service Owner
  * I can request a service and provide details about that service
  * I can modify a service's details or remove the service request so long as I haven't yet accepted a proposal
  * I can mark a service as having been completed
  * I can pay the person who provided the service
  * I can leave a rating for the person who provided the service
  * I can browse my current service requests 
* Service Provider
  * I can browse existing job requests that are accepting proposals
  * I can make, edit or remove a proposal, so long as it hasn't been either accepted or rejected
  * I can receive payment for providing a service

## Provide wireframes for your app


## Describe the way tasks are being planned and tracked in your project
We made use of Trello and verbally assigning tasks and agreeing on which parts of the app we would work on individually.

## Discuss how agile methodology is being implemented in your app


## Provide an overview and description of your source control process
We made use of Git/GitHub to manage our codebase. We made agreements on how we would use the platform as a team (merging master rather than rebasing) and ensuring that we sought approval for pull requests before merging. We also agreed that the person making the pull request be responsible for merging their work into master.

## Provide an overview and description of your testing process
Manual testing was used frequently, especially when reviewing another's pull request. Rspec tests were also defined.

## Discuss and analyse requirements related to information system security


## Discuss methods you will use to protect information and data


## Research what your legal obligations are in relation to handling user data


## 1- Documentation describes relational database model and database infrastructure
## 1- Design a schema appropriate for relational databases
## 2- Provide your database schema design
## 2- ERD provided represents a normalised database model
## 3- Identify entities which must be tracked by the application
## 3- Database design appropriately addresses the requirements of a complex scenario
## 4- Discuss the database relations to be implemented
## 4- Identify relationships / associations between entities
## 5- Describe your project’s models in terms of the relationships (active record associations) they have with each other
## 1- Model implementation represents a normalised database model
## 1- Relationships are correctly defined as ActiveRecord associations to reflect understanding of the desired database structure
## 1- Identify and use appropriate model methods
## 2a- Implemented controllers demonstrate correct use of commands to query the database infrastructure
## 2a- Queries implemented provide correct data for the given scenario
## 2b- Implementation of data operations demonstrate an understanding of the relational database model used
## 2b- Minimising database calls needed to perform an action
## 3- Code comments demonstrate how the queries implemented correctly represent the database structure
## Sanitise and validates input to maintain data integrity