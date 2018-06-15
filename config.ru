require_relative './config/environment'
require_relative './app/controllers/users_controller'
require_relative './app/controllers/wishlists_controller'
require_relative './app/controllers/attractions_controller'

use Rack::MethodOverride
use CitiesController
use AttractionsController
use WishlistsController
use UsersController
run ApplicationController
