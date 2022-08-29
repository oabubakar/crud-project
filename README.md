# UNV Project Assignment

This repo contains the information on how to setup and run the project.

This project is based on the following technologies :

* Bootstrap
* Laravel framework
* Php
* MYSQL Database

## Prerequisite
Please ensure you have XAMPP with Apache and MYSQL Database up and running. You can also use any other PHP application server such as NGINX to run project.

## Steps to install

1. Clone or download this repository:
```
git clone https://github.com/oabubakar/crud-project.git
```
2. Ensure this project is in the root directory of the application you are using eg for xampp, it would usually be htdocs
```
C:\xampp\htdocs\crud-project
```
3. Install dependencies (Please ensure you have composer installed on your device before executing the following command)
```
composer install
```
4. Genereate encryption key
```
php artisan key:generate
```
5. Create database called `crud-project`

6. Import/Dump the database
```
Import/Dump `crud-project.sql` found inside app\database\dump directory in this repo
```
7. Database credentials
```
Ensure you update the database credentails inside .env.example file if you are using credentails other than the default ones. Rename .env.example to .env
```
## Test Web App
8. Navigate to http://localhost/crud-project/public/
```
This will display the dashboard with the projects. You can now navigate through the different menu items
```
## Test RESTful APIs
9. `GET` http://localhost/crud-project/public/api/projects/all
```
This should return a json object of all projects
```
10. `GET` http://localhost/crud-project/public/api/projects/kenya
```
This should return a json object of all projects in Kenya
```
11. `GET` http://localhost/crud-project/public/api/projects/status/completed
```
This should return a json object of all completed projects
```