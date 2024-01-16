<div align="center">

  <h1>Realtime Search App</h1>
  
  <p>
    A real-time search box that allows users to search for articles seamlessly. Beyond providing a conventional search functionality, the project focuses on collecting and analyzing user search inputs for insights into popular search trends. The system incorporates IP tracking for individual searches, eliminating the need for user accounts or complex authentication. 
  </p>
   
</div>

<div align="center"> 
  <img src="https://github.com/A-Isco/search_app/blob/main/images/demo_home_screen.PNG?raw=true" alt="screenshot" />
</div>

<br />

<!-- Table of Contents -->
# :notebook_with_decorative_cover: Table of Contents

- [About the Project](#star2-about-the-project)
  * [Tech Stack](#space_invader-tech-stack)
- [Getting Started](#toolbox-getting-started)
  * [Run Locally](#running-run-locally)  

<!-- About the Project -->
## :star2: About the Project


<!-- TechStack -->
### :space_invader: Tech Stack
- Ruby On Rails
- Postgres server
- Redis server

<!-- Getting Started -->
## 	:toolbox: Getting Started

<!-- Prerequisites -->
### Prerequisites

- Ruby
- Postgres server
- Redis server

<!-- Run Locally -->
### :running: Run Locally

Clone the project

```bash
  git clone https://github.com/A-Isco/search_app.git
```

Go to the project directory

Run the following command to install all the dependencies.

```sh
bundle install
```

### Usage

Run the following command to start the server, then go to http://localhost:3000

```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load all data in database from seed.rb
rails assets:precompile # for precompiling assets
rails assets:clean
```

Start the server

```bash
rails s
```
