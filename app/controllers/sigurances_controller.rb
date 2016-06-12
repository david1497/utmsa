class SigurancesController < ApplicationController
  before_action :set_sigurance, only: [:show, :edit, :update, :destroy]

  # GET /sigurances
  # GET /sigurances.json
  def index
    @sigurances = Sigurance.all
  end

  # GET /sigurances/1
  # GET /sigurances/1.json
  def show
  end

  # GET /sigurances/new
  def new
    @sigurance = Sigurance.new
  end

  # GET /sigurances/1/edit
  def edit
  end

  # POST /sigurances
  # POST /sigurances.json
  def create
    @sigurance = Sigurance.new(sigurance_params)

    respond_to do |format|
      if @sigurance.save
        format.html { redirect_to @sigurance, notice: 'Sigurance was successfully created.' }
        format.json { render :show, status: :created, location: @sigurance }
      else
        format.html { render :new }
        format.json { render json: @sigurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sigurances/1
  # PATCH/PUT /sigurances/1.json
  def update
    respond_to do |format|
      if @sigurance.update(sigurance_params)
        format.html { redirect_to @sigurance, notice: 'Sigurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @sigurance }
      else
        format.html { render :edit }
        format.json { render json: @sigurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sigurances/1
  # DELETE /sigurances/1.json
  def destroy
    @sigurance.destroy
    respond_to do |format|
      format.html { redirect_to sigurances_url, notice: 'Sigurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sigurance
      @sigurance = Sigurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sigurance_params
      params.require(:sigurance).permit(:nume, :prenume, :tel, :email, :content)
    end
end
