class DonatsController < ApplicationController
  before_action :set_donat, only: [:show, :edit, :update, :destroy]

  # GET /donats
  # GET /donats.json
  def index
    @donats = Donat.all
  end

  # GET /donats/1
  # GET /donats/1.json
  def show
  end

  # GET /donats/new
  def new
    @donat = Donat.new
  end

  # GET /donats/1/edit
  def edit
  end

  # POST /donats
  # POST /donats.json
  def create
    @donat = Donat.new(donat_params)

    respond_to do |format|
      if @donat.save
        format.html { redirect_to @donat, notice: 'Donat was successfully created.' }
        format.json { render :show, status: :created, location: @donat }
      else
        format.html { render :new }
        format.json { render json: @donat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donats/1
  # PATCH/PUT /donats/1.json
  def update
    respond_to do |format|
      if @donat.update(donat_params)
        format.html { redirect_to @donat, notice: 'Donat was successfully updated.' }
        format.json { render :show, status: :ok, location: @donat }
      else
        format.html { render :edit }
        format.json { render json: @donat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donats/1
  # DELETE /donats/1.json
  def destroy
    @donat.destroy
    respond_to do |format|
      format.html { redirect_to donats_url, notice: 'Donat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donat
      @donat = Donat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donat_params
      params.require(:donat).permit(:name, :description, :picture_url)
    end
end
