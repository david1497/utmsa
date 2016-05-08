class UtilitesController < ApplicationController
  before_action :set_utilite, only: [:show, :edit, :update, :destroy]

  # GET /utilites
  # GET /utilites.json
  def index
    @utilites = Utilite.all
  end

  # GET /utilites/1
  # GET /utilites/1.json
  def show
  end

  # GET /utilites/new
  def new
    @utilite = Utilite.new
  end

  # GET /utilites/1/edit
  def edit
  end

  # POST /utilites
  # POST /utilites.json
  def create
    @utilite = Utilite.new(utilite_params)

    respond_to do |format|
      if @utilite.save
        format.html { redirect_to @utilite, notice: 'Utilite was successfully created.' }
        format.json { render :show, status: :created, location: @utilite }
      else
        format.html { render :new }
        format.json { render json: @utilite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utilites/1
  # PATCH/PUT /utilites/1.json
  def update
    respond_to do |format|
      if @utilite.update(utilite_params)
        format.html { redirect_to @utilite, notice: 'Utilite was successfully updated.' }
        format.json { render :show, status: :ok, location: @utilite }
      else
        format.html { render :edit }
        format.json { render json: @utilite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utilites/1
  # DELETE /utilites/1.json
  def destroy
    @utilite.destroy
    respond_to do |format|
      format.html { redirect_to utilites_url, notice: 'Utilite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utilite
      @utilite = Utilite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utilite_params
      params.require(:utilite).permit(:title, :avatar)
    end
end
