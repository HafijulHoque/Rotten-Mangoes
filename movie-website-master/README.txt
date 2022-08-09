1.Set up the database


    connect sys as sysdba
    [enter password]
    alter session set "_ORACLE_SCRIPT" = true;
    create user C##MOVIEDATABASE identified by MOVIEDATABSE;
    grant dba to C##MOVIEDATABASE; The sql files can then be executed.

2.Starting the server
The code to start up the server is inside the src/app.js To start up the server, Open the terminal and type:

    npm i to install all the node modules
    npm run dev will start the process of the server

3.Viewing the webpage
Open the browser of your choice and type http://localhost:3000/ to view OUR PROJECT
4.Closing the project
Press Ctrl + c on the terminal and then press Y