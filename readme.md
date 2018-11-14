Address Book Application: simple web application designed to store, view, and manage business contacts

Included Files and Folders:
- index.html: the main template page, containing the nav-bar, the angular imports for the project, and the main body
- styles.css: global css styling for the html pages.
- app.js: definitions of angular modules, module configurations, and controllers
- pages: folder containing html views
    - tableView.html: 
        the main view for this application --> a simple table layout of the contact data
        clicking on any of the rows redirects the user to the edit contact page for that contact
    - businessCardView.html: 
        secondary view of contacts --> layout of basic business cards displaying the contact data
        clicking on any of the business cards redirects the user to the edit contact page for that contact
    - contactForm.html:
        a form for adding new contacts or updating or deleting existing ones
        currently performs very little validation or error checking --> prominent issues to address next
- php-scripts: folder containing the php scripts used to integrate the frontend and the backend
    - config.php: configuration for connection to the database
    - getData.php: retrieves all of the contacts in the database
    - insertData.php: adds a single contact to the database
    - updateData.php: updates a single contact in the database
    - deleteData.php: deletes a single contact from the database
- contacts.sql: database file

Usage: Import the database and update the config.php file accordingly. I initialized the database with the information from the XML file provided using "load xml local infile PATH_TO_CONTACTS_FILE into table contacts rows identified by '<Contact>';", so it should already currently contain the data provided.

Notes on the implementation:
- The database currently uses the CustomerID as the primary key. Therefore, there can be no two contacts with the same CustomerID. If the CustomerID will not be unique or a customer may have more than one company or job, etc., it would make sense to add another unique key to identify the records. I did not do 
so for this implementation because the examples provided did not repeat any CustomerIDs, so for the sake 
of simplicity, I opted to use this as the identifier rather than adding another value.

Improvements to make on the code:
- Add error handling, more comprehensive form validation, and guidelines for user on the page
- Currently $timeout on page redirect and call to get data from database on every reload of tableView are
used to ensure that the displayed contacts list remains up to date. Optimally, the call to get data should
only be made upon update of the database.
- I chose not to split the css into separate files, since I did not use much styling for this application; if the application were to be extended, additional css files should be added per view.

Useful functionality to implement for the future if this was a real application:
- Search for a specific contact
- Sort by specific field
- Add contacts by uploading business card images, other formats, etc.
- Admin feature to allow user to edit contact fields, formatting, etc.
- Capability to support multiple users
