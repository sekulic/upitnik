class AnketeController < ApplicationController
  before_action :set_anketa, only: [:show, :edit, :update, :destroy]

  # GET /ankete
  # GET /ankete.json
  def index
    @ankete = Anketa.all
  end

  # GET /ankete/1
  # GET /ankete/1.json
  def show
  end

  # GET /ankete/new
  def new
    @anketa = Anketa.new
  end

  # GET /ankete/1/edit
  def edit
  end

  # POST /ankete
  # POST /ankete.json
  def create
    @anketa = Anketa.new(anketa_params)

    respond_to do |format|
      if @anketa.save
        format.html { redirect_to @anketa, notice: 'Anketa was successfully created.' }
        format.json { render :show, status: :created, location: @anketa }
      else
        format.html { render :new }
        format.json { render json: @anketa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ankete/1
  # PATCH/PUT /ankete/1.json
  def update
    respond_to do |format|
      if @anketa.update(anketa_params)
        format.html { redirect_to @anketa, notice: 'Anketa was successfully updated.' }
        format.json { render :show, status: :ok, location: @anketa }
      else
        format.html { render :edit }
        format.json { render json: @anketa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ankete/1
  # DELETE /ankete/1.json
  def destroy
    @anketa.destroy
    respond_to do |format|
      format.html { redirect_to ankete_url, notice: 'Anketa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anketa
      @anketa = Anketa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anketa_params
      params.require(:anketa).permit(:naslov, :opis)
    end
end
