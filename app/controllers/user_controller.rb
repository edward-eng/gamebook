class UserController < ApplicationController
<<<<<<< HEAD

   def new
    User.create(params[:user])

   end

    private

   def password
     @password ||= BCrypt::Password.new(password_hash)
   end

   def password=(new_password)
     @password = BCrypt::Password.create(new_password)
     self.password_hash = @password
   end

   def authenticate(password)
     self.password == password
   end

=======
>>>>>>> 99ecd86845986fb783f96575b9dae65fbf3250de
end
