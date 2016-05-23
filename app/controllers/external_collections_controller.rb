class ExternalCollectionsController < ApplicationController
  before_action :set_external_collection, only: [:show, :edit, :update, :destroy]

  # GET /external_collections
  # GET /external_collections.json
  def index
    @external_collections = ExternalCollection.all
  end

  # GET /external_collections/1
  # GET /external_collections/1.json
  def show
  end

  # GET /external_collections/new
  def new
    @external_collection = ExternalCollection.new
  end

  # GET /external_collections/1/edit
  def edit
  end

  # POST /external_collections
  # POST /external_collections.json
  def create
    @external_collection = ExternalCollection.new(external_collection_params)

    respond_to do |format|
      if @external_collection.save
        format.html { redirect_to @external_collection, notice: 'External collection was successfully created.' }
        format.json { render :show, status: :created, location: @external_collection }
      else
        format.html { render :new }
        format.json { render json: @external_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_collections/1
  # PATCH/PUT /external_collections/1.json
  def update
    respond_to do |format|
      if @external_collection.update(external_collection_params)
        format.html { redirect_to @external_collection, notice: 'External collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_collection }
      else
        format.html { render :edit }
        format.json { render json: @external_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_collections/1
  # DELETE /external_collections/1.json
  def destroy
    @external_collection.destroy
    respond_to do |format|
      format.html { redirect_to external_collections_url, notice: 'External collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_collection
      @external_collection = ExternalCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_collection_params
      params.require(:external_collection).permit(:name, :url, :description)
    end
end
