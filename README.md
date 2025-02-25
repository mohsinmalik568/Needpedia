<b>Note from founder to dev community:</b><br>
Needpedia's goal is to create a community of devs who use it's "Layer System" and other tools to collaborate directly with users, to optimize Needpedia, and to optimize the world. It can be used to work on anything from random volunteer organizations halfway accross the world, to exposing all known problems with giant evil corporations in your own backyard. Which is why it needs to be an Open Source community instead of a business. (Most sponsors aren't going to like that)

That said, the tools we're making for activists and scientists can also be used for respectable/ethical businesses, (to profit), so once Needpedia's doing well we plan on creating a separate, worker-owned business that specializes in using the tools we've made here to serve respectable businesses, and generate funding for legal defense trust fund, (for Needpedia.

 Needpedia has an FAQ section here: https://needpedia.org/faq
 and a 'how to' section on the homepage at Needpedia.org

*Please also remember that Needpedia's dev community is the backbone of this entire operation, so if there is Anything I can do to support you, or that we can add to this project to make it work better, I definitely want to know. My personal email address is Anthonydunn97202@gmail.com - Even if I can't answer your question pesonally I'm happy to find someone who can.
      -Anthony Brasher<br><br>





<b>Setting up locally with Docker (Recommended):</b><br>
1. Follow this link to install docker https://docs.docker.com/engine/install/ubuntu/
   (Devs running Ubuntu Hirsute can instead use the terminal command `sudo snap install docker`)
2. Follow this link to install docker compose https://docs.docker.com/compose/install/
3. Stop your local running postgresql service by command `sudo service postgresql stop`
4. Go to project directory, left click: "Open in terminal" and run command `sudo docker-compose build` (NOTE: Its only for first time)
5. After successfully build run command `sudo docker-compose up`
 You project will be running on `localhost:3000` (as a URL)<br><br>


If you have issues getting it to load updates locally, try:<br>
1. docker system prune<br>
or<br>
2. docker-compose up --build<br><br>


<b>Setting up locally without Docker:</b><br>

Before starting, it is important you have the desired environment, you'll need to install
- Ruby (instructions for your operating system can be found here https://www.ruby-lang.org/en/documentation/installation/)
- PostgresQL (download instructions are here https://www.postgresql.org/)
- Node.js (Find the installation instructions at the Node.js website https://nodejs.org/en/download/)
- Yarn (To install Yarn, follow the installation instructions at the Yarn website https://classic.yarnpkg.com/en/docs/install)

Once you have all these installed on your local machine, you can follow the bellow steps to setup this project locally

- clone the repo
- bundle install
- create DB, run command rails db:create
- run migrations, run command: rails db:migrate

<b>Environment variables for for development</b><br>
RECAPTCHA_SECRET_KEY=6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe
RECAPTCHA_SITE_KEY=6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI


Optional:

GENERAL_AREA_ID=1 (where 1 is the DB id of any Area post)

GENERAL_PROBLEM_ID=2 (where 2 is the DB id of any Area post)
<br><br>




<b>Server/Devops documentation:</b><br>
See file named: Devops Documentation
https://github.com/Queuevius/Needpedia2/blob/master/Devops%20Documentation
<br><br>





<b>Milestone Documentation</b><br>

---Milestone 105: Create Curated Posts and Upgrade Search Page
-Milestone description: https://docs.google.com/document/d/1DZJTUHFfsIuhQ6LlNM6HXx6WjZq5jSsQaO7wQseWMs8/edit?usp=sharing
-Milestone documentation: https://docs.google.com/document/d/1lp530HkuAmWH5P2A5-nVEeg66fLvoQtlT7bUJFlxVnQ/edit?usp=sharing

---M106: Create [wiki post] Buttons and Limit Size of Wiki Posts in Lists
-Milestone description: https://docs.google.com/document/d/1JiPESiUPhGrHMQJRTc0LXsB2k9mAp884s_rgzn_J51c/edit?usp=sharing
-Milestone documentation: https://docs.google.com/document/d/1SN7N7ETLNs0nIISQPwhB0E0DrYMbEICVm_adWo8GjSc/edit?usp=sharing

---M111: Auto-fill funtionality
-Milestone documentation: https://docs.google.com/document/d/1sJj9VaFUGM9F9WQn9_7jqYQ8N5KRNm0GX6TW5f0n4gc/edit?usp=sharing


**Docker Setup Steps:**
1. Follow this link to install docker https://docs.docker.com/engine/install/ubuntu/
2. Follow this link to install docker compose https://docs.docker.com/compose/install/
3. Stop your local running postgresql service by command `sudo service postgresql stop`
4. Go to project directory and run command `sudo docker-compose build` (NOTE: Its only for first time)
5. After successfully build run command `sudo docker-compose up`
 You project will be running on `localhost:3000`

**Local Mails:**

All emails from the system can be checked locally on `http://localhost:3000/letter_opener`

**Contributing to Needpedia**
- Fork the repo
- create a branch in your fork
- commit your code in branch
- Submit a PR in the main repo
- Your code would be reviewed by then would be deployed on staging server for testing, and if everything was fine it should be deployed on production server

<Admin notes: 
-Use admin accounts whenever possible (they're the most up to date). 
-To see private, public, or moderated posts, use a colon (IE: "private:", "public:", or "moderated:")
