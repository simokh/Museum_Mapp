class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def create
        @user = User.new(user_parasm)
        if @user.save 
            session[:user.id] = @user.id 
            redirect_to show_path
        else 
            render :new
        end
    end

    private

    def user_parasm
        parasm.require(@user).permit(:email, :user_name, :password)   
    end
    
end
