class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    flash["notice"] = "You have successfully created a user #{@user.first_name} #{@user.last_name} "
    redirect_to articles_path
  else
    render 'new'
  end
end

def edit
  @user = User.find(params[:id])
end
def update
  @user = User.find(params[:id])
  if @user.update(user_params)
    flash[:notice] = "User was successfully updated"
    redirect_to articles_path
  else
    render 'edit'
  end
end

private

def user_params
  params.require(:user).permit(:username, :first_name,:last_name, :role, :email,:password)
end

end
