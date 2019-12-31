class WeaponsController < ApplicationController
  before_action :set_weapon, only: [:show, :edit, :update, :destroy]

  
  def index
    @weapons = Weapon.all
  end

  
  def show
    @weapons = Weapon.all
  end
  
  def create
    @weapon = Weapon.create(weapon_params)
    render json: @weapon
    
  end

  # PATCH/PUT /weapons/1
  # PATCH/PUT /weapons/1.json
  def update
    respond_to do |format|
      if @weapon.update(weapon_params)
        format.html { redirect_to @weapon, notice: 'Weapon was successfully updated.' }
        format.json { render :show, status: :ok, location: @weapon }
      else
        format.html { render :edit }
        format.json { render json: @weapon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weapons/1
  # DELETE /weapons/1.json
  def destroy
    @weapon.destroy
    respond_to do |format|
      format.html { redirect_to weapons_url, notice: 'Weapon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weapon_params
      params.fetch(:weapon, {})
    end
end
