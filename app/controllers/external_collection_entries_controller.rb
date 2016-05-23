class ExternalCollectionEntriesController < ApplicationController
  before_action :set_external_collection_entry, only: [:show, :edit, :update, :destroy]

  # GET /external_collection_entries
  # GET /external_collection_entries.json
  def index
    @external_collection_entries = ExternalCollectionEntry.all
  end

  # GET /external_collection_entries/1
  # GET /external_collection_entries/1.json
  def show
  end

  # GET /external_collection_entries/new
  def new
    @external_collection_entry = ExternalCollectionEntry.new
  end

  # GET /external_collection_entries/1/edit
  def edit
  end

  # POST /external_collection_entries
  # POST /external_collection_entries.json
  def create
    @external_collection_entry = ExternalCollectionEntry.new(external_collection_entry_params)

    respond_to do |format|
      if @external_collection_entry.save
        format.html { redirect_to @external_collection_entry, notice: 'External collection entry was successfully created.' }
        format.json { render :show, status: :created, location: @external_collection_entry }
      else
        format.html { render :new }
        format.json { render json: @external_collection_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_collection_entries/1
  # PATCH/PUT /external_collection_entries/1.json
  def update
    respond_to do |format|
      if @external_collection_entry.update(external_collection_entry_params)
        format.html { redirect_to @external_collection_entry, notice: 'External collection entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_collection_entry }
      else
        format.html { render :edit }
        format.json { render json: @external_collection_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_collection_entries/1
  # DELETE /external_collection_entries/1.json
  def destroy
    @external_collection_entry.destroy
    respond_to do |format|
      format.html { redirect_to external_collection_entries_url, notice: 'External collection entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_collection_entry
      @external_collection_entry = ExternalCollectionEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_collection_entry_params
      params.require(:external_collection_entry).permit(:external_collection_id, :site_id, :there_id, :url)
    end
end
