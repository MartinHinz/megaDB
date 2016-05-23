class CatalogueEntriesController < ApplicationController
  before_action :set_catalogue_entry, only: [:show, :edit, :update, :destroy]

  # GET /catalogue_entries
  # GET /catalogue_entries.json
  def index
    @catalogue_entries = CatalogueEntry.all
  end

  # GET /catalogue_entries/1
  # GET /catalogue_entries/1.json
  def show
  end

  # GET /catalogue_entries/new
  def new
    @catalogue_entry = CatalogueEntry.new
  end

  # GET /catalogue_entries/1/edit
  def edit
  end

  # POST /catalogue_entries
  # POST /catalogue_entries.json
  def create
    @catalogue_entry = CatalogueEntry.new(catalogue_entry_params)

    respond_to do |format|
      if @catalogue_entry.save
        format.html { redirect_to @catalogue_entry, notice: 'Catalogue entry was successfully created.' }
        format.json { render :show, status: :created, location: @catalogue_entry }
      else
        format.html { render :new }
        format.json { render json: @catalogue_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogue_entries/1
  # PATCH/PUT /catalogue_entries/1.json
  def update
    respond_to do |format|
      if @catalogue_entry.update(catalogue_entry_params)
        format.html { redirect_to @catalogue_entry, notice: 'Catalogue entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogue_entry }
      else
        format.html { render :edit }
        format.json { render json: @catalogue_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogue_entries/1
  # DELETE /catalogue_entries/1.json
  def destroy
    @catalogue_entry.destroy
    respond_to do |format|
      format.html { redirect_to catalogue_entries_url, notice: 'Catalogue entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogue_entry
      @catalogue_entry = CatalogueEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogue_entry_params
      params.require(:catalogue_entry).permit(:catalogue_id, :site_id, :nr, :page)
    end
end
