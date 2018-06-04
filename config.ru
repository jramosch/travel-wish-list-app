require_relative './config/environment'
require_relative './app/controllers/users_controller'

use UsersController
run ApplicationController
