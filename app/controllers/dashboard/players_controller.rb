class Dashboard::PlayersController < DashboardController
  before_action :set_player_match, only: %i[show edit update destroy]

  def index
    @players = Player.where(status: 0).order(:name)
    # render json: @players.as_json

    respond_to do |format|
      format.html # index.html.erb
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
          redirect_to dashboard_players_url(@player), notice: 'Player was successfully created.'
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
        format.html { redirect_to player_url(@player), notice: 'Soccer match was successfully updated.' }
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
      format.html { redirect_to playeres_url, notice: 'Soccer match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_player_match
    @player = Player.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def player_params
    params.fetch(:player, {})
  end
end
