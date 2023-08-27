class Dashboard::PlayersController < DashboardController
  def index
    @players = Player.where(status: 0).order(:name)
    # render json: @players.as_json
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @players }
    end
  end
end
