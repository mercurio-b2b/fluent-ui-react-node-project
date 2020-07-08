##Fluent UI example with Node JS backend

This project assumes that the users view is available on MySQL on a local server

We split the project on the backend with the main project and a front end client

##Backend

Entering the project, can install libraries fron npm and then start the project

npm install

npm start

##Frontend

We create a separate terminal, then enter the /client folder and repeat the process

npm install

npm start

The way that the project is configured, the /client folder adds http://localhost:5000 as a proxy in order to be able to connect to the server api on the same port, avoiding CORS issues
