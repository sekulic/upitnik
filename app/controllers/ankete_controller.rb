class AnketeController < ApplicationController

  expose(:ankete)
  expose(:anketa, attributes: :anketa_params)
  expose(:kategorija)
  expose(:kategorije)
    
  def index
  end

  def show
  end

  def new
    3.times do 
      pitanja = anketa.pitanja.build
      4.times { pitanja.odgovori.build }
    end
  end

  def edit
  end

  def create
    self.anketa = Anketa.new(anketa_params)
      if anketa.save
        redirect_to anketa, notice: 'Anketa je uspešno kreirana.'
      else
        render action: 'new'
      end
  end

  # PATCH/PUT /ankete/1
  # PATCH/PUT /ankete/1.json
  def update
    respond_to do |format|
      if self.anketa.update(anketa_params)
        format.html { redirect_to anketa, notice: 'Anketa je uspešno promenjena.' }
        format.json { render :show, status: :ok, location: anketa }
      else
        format.html { render :edit }
        format.json { render json: anketa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ankete/1
  # DELETE /ankete/1.json
  def destroy
    anketa.destroy
    respond_to do |format|
      format.html { redirect_to ankete_url, notice: 'Anketa je uspešno izbrisana.' }
      format.json { head :no_content }
    end
  end

  private

    def anketa_params
      params.require(:anketa).permit(:naslov, :opis, :kategorija_id, pitanja_attributes: [:id, :sadrzaj, :anketa_id, :_destroy])
    end
end
