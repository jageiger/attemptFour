class UsersController < ApplicationController
  after_create :set_role
  
  protected
    def set_role
      self.role = 0
    end
  
end