# TODO
* create migrations *
* create models with relationships *
* plan out routes for controller following restful conventions and map to CRUD actions*
* build controller actions and passing appropriate data to views*
* add user authentication / password protection*
* add user authorization *
* build views (forms)*
* build navigation
* validations 


# Requirements 
1. Build an MVC (Links to an external site.) Sinatra application.
2. Use ActiveRecord (Links to an external site.) with Sinatra.
3. Use multiple models.
4. Use at least one has_many relationship on a User model and one belongs_to relationship on another model.
5. Must have user accounts - users must be able to sign up, sign in, and sign out.
6. Validate uniqueness of user login attribute (username or email).
7. Once logged in, a user must have the ability to create, read, update and destroy the resource that belongs_to user.
8. Ensure that users can edit and delete only their own resources - not resources created by other users.
9. Validate user input so bad data cannot be persisted to the database.
10. BONUS: Display validation failures to user with error messages (Links to an external site.). (This is an optional feature, challenge yourself and give it a shot!)