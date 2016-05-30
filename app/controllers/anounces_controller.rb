class AnouncesController < ApplicationController
  before_action :set_anounce, only: [:show, :edit, :update, :destroy]

  # GET /anounces
  # GET /anounces.json
  def index
    @anounces = Anounce.all
  end

  # GET /anounces/1
  # GET /anounces/1.json
  def show
  end

  # GET /anounces/new
  def new
    @anounce = Anounce.new
  end

  # GET /anounces/1/edit
  def edit
  end

  # POST /anounces
  # POST /anounces.json
  def create
    @anounce = Anounce.new(anounce_params)

    respond_to do |format|
      if @anounce.save
        format.html { redirect_to @anounce, notice: 'Anounce was successfully created.' }
        format.json { render :show, status: :created, location: @anounce }
      else
        format.html { render :new }
        format.json { render json: @anounce.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anounces/1
  # PATCH/PUT /anounces/1.json
  def update
    respond_to do |format|
      if @anounce.update(anounce_params)
        format.html { redirect_to @anounce, notice: 'Anounce was successfully updated.' }
        format.json { render :show, status: :ok, location: @anounce }
      else
        format.html { render :edit }
        format.json { render json: @anounce.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anounces/1
  # DELETE /anounces/1.json
  def destroy
    @anounce.destroy
    respond_to do |format|
      format.html { redirect_to anounces_url, notice: 'Anounce was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anounce
      @anounce = Anounce.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anounce_params
      params.require(:anounce).permit(:titlu, :content, :grupe_id)
    end
end
