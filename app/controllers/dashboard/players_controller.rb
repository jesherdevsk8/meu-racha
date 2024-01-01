# frozen_string_literal: true

class Dashboard::PlayersController < DashboardController
  before_action :set_player, only: %i[show edit update destroy]

  def index
    @players = Player.titular.filter_by_name_or_nickname(permitted_params[:search]).order(:name)

    respond_to do |format|
      format.html
      format.json { render json: @players }
    end
  end

  def show; end

  def new
    @player = Player.new
  end

  def edit; end

  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html do
          redirect_to dashboard_player_url(@player), notice: 'Player was successfully created.'
        end
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to dashboard_player_url(@player), notice: 'Soccer match was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @player.destroy

    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Soccer match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def permitted_params
    params.permit(:search)
  end

  # Only allow a list of trusted parameters through.
  def player_params
    permitted_params = params.require(:player).permit(:name, :nickname, :shirt_number, :status, :score_goal,
      :position)

    permitted_params[:status] = params[:player][:status].to_i
    permitted_params[:position] = params[:player][:position].to_i

    permitted_params
  end
end
