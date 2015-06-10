class ScoopsController < ApplicationController
  before_action :signed_in_kid
  before_action :correct_kid, only: [:show, :edit, :update, :destroy]
  before_action :set_scoop, only: [:show, :edit, :update, :destroy]

  # GET /scoops
  # GET /scoops.json
  def index
    @scoops = current_kid.scoops.order(created_at: :desc)
  end

  # GET /scoops/1
  # GET /scoops/1.json
  def show
  end

  # GET /scoops/new
  def new
    @scoop = Scoop.new
  end

  # GET /scoops/1/edit
  def edit
  end

  # POST /scoops
  # POST /scoops.json
  def create
    @scoop = Scoop.new(scoop_params)
    @scoop.kid = current_kid
    respond_to do |format|
      if @scoop.save
        format.html { redirect_to scoops_path, notice: 'Scoop was successfully created!' }
        format.json { render :show, status: :created, location: @scoop }
      else
        format.html { render :new }
        format.json { render json: @scoop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoops/1
  # PATCH/PUT /scoops/1.json
  def update
    respond_to do |format|
      if @scoop.update(scoop_params)
        format.html { redirect_to scoops_path, notice: 'Scoop was successfully updated!' }
        format.json { render :show, status: :ok, location: @scoop }
      else
        format.html { render :edit }
        format.json { render json: @scoop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoops/1
  # DELETE /scoops/1.json
  def destroy
    @scoop.destroy
    respond_to do |format|
      format.html { redirect_to scoops_path, notice: 'Scoop was successfully removed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoop
      @scoop = Scoop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scoop_params
      params.require(:scoop).permit(:headline, :story)
    end

    def correct_kid
      @scoop = current_kid.scoops.find_by(id: params[:id])
      redirect_to root_url if @scoop.nil?
    end
end
