class SubcategorisController < ApplicationController
  before_action :set_subcategori, only: [:show, :edit, :update, :destroy]

  # GET /subcategoris
  # GET /subcategoris.json
  def index
    @subcategoris = Subcategori.all
  end

  # GET /subcategoris/1
  # GET /subcategoris/1.json
  def show
  end

  # GET /subcategoris/new
  def new
    @subcategori = Subcategori.new
  end

  # GET /subcategoris/1/edit
  def edit
  end

  # POST /subcategoris
  # POST /subcategoris.json
  def create
    @subcategori = Subcategori.new(subcategori_params)

    respond_to do |format|
      if @subcategori.save
        format.html { redirect_to @subcategori, notice: 'Subcategori was successfully created.' }
        format.json { render :show, status: :created, location: @subcategori }
      else
        format.html { render :new }
        format.json { render json: @subcategori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subcategoris/1
  # PATCH/PUT /subcategoris/1.json
  def update
    respond_to do |format|
      if @subcategori.update(subcategori_params)
        format.html { redirect_to @subcategori, notice: 'Subcategori was successfully updated.' }
        format.json { render :show, status: :ok, location: @subcategori }
      else
        format.html { render :edit }
        format.json { render json: @subcategori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subcategoris/1
  # DELETE /subcategoris/1.json
  def destroy
    @subcategori.destroy
    respond_to do |format|
      format.html { redirect_to subcategoris_url, notice: 'Subcategori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategori
      @subcategori = Subcategori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subcategori_params
      params.require(:subcategori).permit(:categori_id, :name, :content, :avatar)
    end
end
