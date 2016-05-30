class UsersController < ApplicationController

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    @user.user = current_user
    @user.save!

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Inregistrare cu succes' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def show
  	@user = User.find(params[:id])
  	@user_comments = @user_comments
  end

    private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :lastname, :birth, :adresa, :tel, :seria, :idnp, :email)
    end

end
