class PlayersController < ApplicationController

  def all_index
    @players = Player.all
  end

  def new
    redirect_to root_path unless @current_user

    @team = Team.find(params[:team_id])
    @player = @team.players.build
  end

  def create
    redirect_to root_path unless @current_user

    @team = Team.find(params[:team_id])
    @player = @team.players.create(params_player)

    if @player.save
    redirect_to @team, notice: "You added a player!"
  else
    redirect_to @team, notice: "The player failed to be created."
  end

end

  def show
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
  end

  def edit
    redirect_to root_path unless @current_user

    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
  end

  def update
    redirect_to root_path unless @current_user

    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
      @player.update(params_player)

      if @player.save
        redirect_to @team, notice: "You updated the player!"
      else
        render 'edit'
      end
  end

  def destroy
    redirect_to root_path unless @current_user

    @team = Team.find(params[:team_id])
    @player = @team.players.find(params[:id])
    @player.destroy

    redirect_to @team
  end

  private
    def params_player
      params.require(:player).permit(:name, :position, :p_team, :notes)
    end

end
