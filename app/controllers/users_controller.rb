class UsersController < ApplicationController
    before_action :set_user, only: [:show,  :edit, :update, :account, :destroy]

    def index 
        @users = User.search(params[:search])
    end

    def welcome 
    
    end

    def account 
    end

    def show 
    end

    def new 
        @user = User.new
    end

    def create 
        @user = User.new(user_params)

        if @user.save 
            redirect_to user_path(@user)
        else
            render :new
        end

    end

    def edit 
    end

    def update 
        if @user.update(user_params)
            redirect_to user_path(@user)
        else 
            render :edit
        end
    end

    def destroy
        @user.destroy 
        redirect_to '/'
    end

    private 

    def set_user 
        @user = User.find(params[:id])
    end

    def user_params 
        params.require(:user).permit(:name, :email, :password)
    end

end
