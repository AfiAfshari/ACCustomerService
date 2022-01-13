# Database Task

\*\* SQL Files

- [x] Creating Tables
      create customer table
      create licenses table
      create customerlicense join table
      \*\* CreateTablesAndInsert.sql
- [] Creating Stored procedures.
  \*\* StoredProcedures.sql
- [] Creating Functions
- [x] Creating Table based functions
      \*\* CreatFunctions.sql
- [] Creating SQL Types
- [x] More emphasis on Joins
      \*\* StoredProcedures.sql

# Before Task

## Install apps

- ~~VS 2019~~ `Done`
- ~~Microsoft SQL server~~ `Done`
- ~~SSMS~~ `Done`
- ~~.Net core SDK~~ `Done`

## DB

- ~~Creat new database named FirstA~~ `Done`
- ~~Add login user~~ `Done`
- ~~Fixed error 18546~~ `Done`
- ~~Fix accessing to new created database~~ `Done`

**_(no mapped user permission on the login)_**

- ~~Delete database~~ `Done`
- ~~Generate SQL script and run the script~~ `Done`

### Create table

- ~~Creat a member table.~~ `Done`
- ~~Added id as primary key~~ `Done`
- ~~Firstname and lastname to the table.~~ `Done`
- ~~Add index for `ID`~~ `Done`
- ~~Create sql script to create the database~~ `Done`

## AC Customer Service DB

- ~~Create Customer Service DB~~ `Done`
- ~~Create Customers Table~~ `Done`
  1.  ~~First Name~~
  2.  ~~Last Name~~
  3.  ~~Address~~
  4.  ~~Phone Number~~
  5.  ~~Date Called~~
  6.  ~~Date Created~~
- ~~Create INSERT SP~~ `Done`
- ~~Create GET SP~~ `Done`

## AC Customer Service UI

- Create a div for showing the data with add button
  - ~~Create Kendo Grid~~ `Done`
  - ~~Load the data in the grid~~ `Done`
  - Create an add button
  - on button click hide this div and show the data fields
- Create a second div to show data collection fields
  1.  ~~First Name~~ `Done`
  2.  ~~Last Name~~ `Done`
  3.  ~~Address~~ `Done`
  4.  ~~Phone Number~~ `Done`
  5.  ~~Date Called~~ `Done`
  6.  ~~Date Created~~ `Done`
  - ~~Add the button to save the fields~~ `Done`
  - ~~on button click post the form to the controller~~ `Done`
  - ~~after save relaod the page and show the first feild~~ `Done`
  - ~~re bind the kendo grid to show the data~~ `Done`

## AC Customer Service C#

- ~~get the data and send to => BAL => DAL => DB to insert in table~~ `Done`
- ~~get the data from Db and load the Kendo~~ `Done`
- ~~Use the method to load the page~~ `Done`

## AC Customer Service Java Script

- Add Jquery.mask.js to your page
- mask the phone number field with jquery mask
- add validations to all the fields and show the proper error messages
  ###### AC Customer Service Validations
  - check if the fields are empty or no
  - check if the date called is greater than today's date
- block special characters on the field inputs
- show and hide divs on button click

## AC Customer Service HTML

- fix date column in kendo grid to show the proper date format
- fix the page structures
- add divs for show and hide (Grid Div should be shown and be hidden on add record button click)
- format the page layout to look nicer
- add the page title
- add section titles to divs (Serivce Informations, Add new Service Record)

## AC Customer Service Future Features

- Add Delete Record Functionality
- Add Update Record Functionality
