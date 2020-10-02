# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) User has_many trips, Mountain has_many trips, Trail has_many ratings, Mountain has_many trails
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) Trail belongs_to mountain, Trip belongs_to user, Trip belongs_to mountain, Rating belongs_to trail
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) Mountain has_many users through trips, user has_many mountains through trips, User has_many trails through mountains, Trail has_many users through mountains
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) Mountain has_many users through trips, user has_many mountains through trips, User has_many trails through mountains, Trail has_many users through mountains
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) Trip.date
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) User validates email and first_name, Trip validates mountain and date, Rating validates value
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) Trip.sort_by_descending URL: /users/1, /users/1/trips
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) Google, omniauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes) /users/1/trips
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) /mountains/1/trips/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) /users/new, /trip/new, /trip/edit

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate