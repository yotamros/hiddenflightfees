class AirlinesController < ApplicationController
  before_action :set_airline, only: [:show, :edit, :update, :destroy]

  helper_method :sort_column, :sort_direction
  
  def index
    @airlines = Airline.order(sort_column + " " + sort_direction)
  end

  # GET /airlines/1
  # GET /airlines/1.json
  def show
  end

  # GET /airlines/new
  def new
    @airline = Airline.new
  end

  # GET /airlines/1/edit
  def edit
  end

  # POST /airlines
  # POST /airlines.json
  def create
    @airline = Airline.new(airline_params)

    respond_to do |format|
      if @airline.save
        format.html { redirect_to airlines_path, notice: 'Airline was successfully created.' }
        format.json { render :show, status: :created, location: @airline }
      else
        format.html { render :new }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airlines/1
  # PATCH/PUT /airlines/1.json
  def update
    respond_to do |format|
      if @airline.update(airline_params)
        format.html { redirect_to @airline, notice: 'Airline was successfully updated.' }
        format.json { render :show, status: :ok, location: @airline }
      else
        format.html { render :edit }
        format.json { render json: @airline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airlines/1
  # DELETE /airlines/1.json
  def destroy
    @airline.destroy
    respond_to do |format|
      format.html { redirect_to airlines_url, notice: 'Airline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airline
      @airline = Airline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def airline_params
      params.require(:airline).permit(:name, :carry_on, :first_checked_bag, :second_checked_bag, :additional_bags,
      :overweight_bags, :oversized_bags, :ticket_change_fee_domestic_only, :booking_fee, :unaccompanied_minor, 
      :seat_selection, :premium_seat_selection, :in_flight_food, :balnkets_pillow, :pet)
    end
    
    def sort_column
      Airline.column_names.include?(params[:sort]) ? params[:sort] : "carry_on"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
