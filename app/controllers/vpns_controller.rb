class VpnsController < ApplicationController
  before_action :set_vpn, only: [:show, :edit, :update, :destroy]

  # GET /vpns
  # GET /vpns.json
  def index
    @vpns = Vpn.all
  end

  # GET /vpns/1
  # GET /vpns/1.json
  def show
  end

  # GET /vpns/new
  def new
    @vpn = Vpn.new
  end

  # GET /vpns/1/edit
  def edit
  end

  # POST /vpns
  # POST /vpns.json
  def create
    @vpn = Vpn.new(vpn_params)

    respond_to do |format|
      if @vpn.save
        format.html { redirect_to @vpn, notice: 'Vpn was successfully created.' }
        format.json { render :show, status: :created, location: @vpn }
      else
        format.html { render :new }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vpns/1
  # PATCH/PUT /vpns/1.json
  def update
    respond_to do |format|
      if @vpn.update(vpn_params)
        format.html { redirect_to @vpn, notice: 'Vpn was successfully updated.' }
        format.json { render :show, status: :ok, location: @vpn }
      else
        format.html { render :edit }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vpns/1
  # DELETE /vpns/1.json
  def destroy
    @vpn.destroy
    respond_to do |format|
      format.html { redirect_to vpns_url, notice: 'Vpn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vpn
      @vpn = Vpn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vpn_params
      params.require(:vpn).permit(:server_id, :user_id, :login, :password)
    end
end
