class AdministrationController < ApplicationController
  
  before_filter :authenticate_user!

end
