require_relative './config/environment'
require_relative './app/controllers/users_controller'
require_relative './app/controllers/wishlists_controller'

use WishlistsController
use UsersController
run ApplicationController
