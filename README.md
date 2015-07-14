# API Readme

## View Calls

There are 3 view calls available in this API:

#### View All Assignments
This API call brings back a JSON list of all Assignments in the assignments table.  This is called by going to 
/api/assignments.

#### View Assignment Resources
This API call brings back all of the resources and classmates who are referenced by the Assignment id.  This is called by /api/assignments/:id (the :id is the Assignment id to use)

#### View All Resources
This API call brings back a JSON list of all Resources in the resources table.  This is called by going to /api/resources.


## Add Calls

There are 3 Add calls in this API:

#### Add Assignment
This API call will add an Assignment to the assignments table.  Using the address line to enter, a visit to /api/assignments/add/:new will add the information.  As an example to use:   "/api/assignments/add/RPSv1?github=github.com/alodes999/06-05-rps" , where RPSv1 is the :new key, and github = "url" is the link to plug into the database.  Anything after the ? will register as the github link.

#### Add Resource
This API call will add a Resource to the resources table.  Using the address line to enter, a visit to /api/resources/add/:new will add the information.  As an example to use:   "/api/resources/add/2?link=treehouse.com" , where 2 is the :new key corresponding to the assignment id, and link = "url" is the link to plug into the database.  Anything after the ? will register as the link field.

#### Add Contribution
This API call will add a Contribution to the contributions table.  Using the address line to enter, a visit to /api/contributions/add/:assign_id/:classmate_id will add a new contribution to the table.  :assign_id is the assignment id and :classmate_id is the classmate id of the person collaborating with.


## Delete Calls

There are 3 Delete calls in this API:

#### Delete Assignment
This API call will delete an Assignment from the assignments table.  Using the address: api/assignments/delete/:id will delete the row corresponding to the id entered in the link.  The resulting screen is the hash of the row deleted.

#### Delete Resource
This API call will delete a Resource from the resource table.  Using the address: api/resource/delete/:id will delete the row corresponding to the id entered in the link.  The resulting screen is the hash of the row deleted.

#### Delete Contribution
This API call will delete a Contribution from the contributions table.  Using the address: api/contribution/delete/:id will delete the row corresponding to the id entered in the link.  The resulting screen is the hash of the row deleted.