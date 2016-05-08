class ArticolsController < ApplicationController
  before_action :set_articol, only: [:show, :edit, :update, :destroy]

  # GET /articols
  # GET /articols.json
  def index
    @articols = Articol.all
  end

  # GET /articols/1
  # GET /articols/1.json
  def show
  end

  # GET /articols/new
  def new
    @articol = Articol.new
  end

  # GET /articols/1/edit
  def edit
  end

  # POST /articols
  # POST /articols.json
  def create
    @articol = Articol.new(articol_params)

    respond_to do |format|
      if @articol.save
        format.html { redirect_to @articol, notice: 'Articol was successfully created.' }
        format.json { render :show, status: :created, location: @articol }
      else
        format.html { render :new }
        format.json { render json: @articol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articols/1
  # PATCH/PUT /articols/1.json
  def update
    respond_to do |format|
      if @articol.update(articol_params)
        format.html { redirect_to @articol, notice: 'Articol was successfully updated.' }
        format.json { render :show, status: :ok, location: @articol }
      else
        format.html { render :edit }
        format.json { render json: @articol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articols/1
  # DELETE /articols/1.json
  def destroy
    @articol.destroy
    respond_to do |format|
      format.html { redirect_to articols_url, notice: 'Articol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articol
      @articol = Articol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articol_params
      params.require(:articol).permit(:name, :content, :avatar)
    end
end
