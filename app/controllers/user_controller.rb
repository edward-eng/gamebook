class UserController < ApplicationController
  validates :name, :email, :password_hash, presence: true
  validates :email, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }

    def new

    end

   def create
     @user = User.new(params[:user])

     if @user.save
       session[:user] = @user.id
       redirect "/"
     else
       @errors = @user.errors.full_messages
       render'/users/new'
     end

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

end
