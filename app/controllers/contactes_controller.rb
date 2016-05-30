class ContactesController < ApplicationController
  before_action :set_contacte, only: [:show, :edit, :update, :destroy]

  # GET /contactes
  # GET /contactes.json
  def index
    @contactes = Contacte.all
    @banners = Banner.all
  end

  # GET /contactes/1
  # GET /contactes/1.json
  def show
    @contact = Contacte.find(params[:id])
  end

  # GET /contactes/new
  def new
    @contacte = Contacte.new
  end

  # GET /contactes/1/edit
  def edit
  end

  # POST /contactes
  # POST /contactes.json
  def create
    @contacte = Contacte.new(contacte_params)

    respond_to do |format|
      if @contacte.save
        format.html { redirect_to @contacte, notice: 'Contactul s-a adaugat cu succes' }
        format.json { render :show, status: :created, location: @contacte }
      else
        format.html { render :new }
        format.json { render json: @contacte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactes/1
  # PATCH/PUT /contactes/1.json
  def update
    respond_to do |format|
      if @contacte.update(contacte_params)
        format.html { redirect_to @contacte, notice: 'Contactul a fost innoit' }
        format.json { render :show, status: :ok, location: @contacte }
      else
        format.html { render :edit }
        format.json { render json: @contacte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactes/1
  # DELETE /contactes/1.json
  def destroy
    @contacte.destroy
    respond_to do |format|
      format.html { redirect_to contactes_url, notice: 'Contactul a fost sters' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacte
      @contacte = Contacte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contacte_params
      params.require(:contacte).permit(:title, :content)
    end
end
