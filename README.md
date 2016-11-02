# README

This app uses standard Ruby on rails dependencies, plus Haml for rails and Pry.

This app uses a Postgresql database.

Prior to running, you will need to bundle install and create and migrate your database.

This app is configured to accept new data in the form of JSON.  To add data to database,
run: rake add_json_data.  Follow the prompt to input the desired file path. This task will only
accept .json files!

After new data is uploaded, the HTML page is set at the root route.

I did not use any CSS to style the table per instructions, but I did add CSS in
app/assets/stylesheets/application.scss that will add borders if uncommented.