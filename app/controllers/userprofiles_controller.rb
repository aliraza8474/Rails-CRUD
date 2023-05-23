class UserprofilesController < ApplicationController
    def index
        @userprofiles = Userprofile.all
    end

    def new
        @userprofiles = Userprofile.new
    end

    def create
        @userprofiles = Userprofile.new(user_params)
        # byebug
        if @userprofile.save
            redirect_to userprofiles_path
        else
            render :new
        end
    end

    private
    def user_params
        params.require(:Userprofile).permit(:first_name, :last_name, :email, :dob, 
            :gender, :post)
    end


end