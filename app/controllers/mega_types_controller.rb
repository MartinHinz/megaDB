class MegaTypesController < ApplicationController
  before_action :set_mega_type, only: [:show, :edit, :update, :destroy]

  # GET /mega_types
  # GET /mega_types.json
  def index
    @mega_types = MegaType.all
  end

  # GET /mega_types/1
  # GET /mega_types/1.json
  def show
  end

  # GET /mega_types/new
  def new
    @mega_type = MegaType.new
  end

  # GET /mega_types/1/edit
  def edit
  end

  # POST /mega_types
  # POST /mega_types.json
  def create
    @mega_type = MegaType.new(mega_type_params)

    respond_to do |format|
      if @mega_type.save
        format.html { redirect_to @mega_type, notice: 'Mega type was successfully created.' }
        format.json { render :show, status: :created, location: @mega_type }
      else
        format.html { render :new }
        format.json { render json: @mega_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mega_types/1
  # PATCH/PUT /mega_types/1.json
  def update
    respond_to do |format|
      if @mega_type.update(mega_type_params)
        format.html { redirect_to @mega_type, notice: 'Mega type was successfully updated.' }
        format.json { render :show, status: :ok, location: @mega_type }
      else
        format.html { render :edit }
        format.json { render json: @mega_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mega_types/1
  # DELETE /mega_types/1.json
  def destroy
    @mega_type.destroy
    respond_to do |format|
      format.html { redirect_to mega_types_url, notice: 'Mega type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mega_type
      @mega_type = MegaType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mega_type_params
      params.require(:mega_type).permit(:name)
    end
end
