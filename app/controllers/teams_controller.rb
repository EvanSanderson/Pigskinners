class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    redirect_to root_path unless @current_user
    @team = Team.new
  end

  def show
    @team = Team.find(params[:id])
  end


  def create
    redirect_to root_path unless @current_user

    @team = Team.create(params_team)

  if @team.save
    redirect_to @team, notice: "You created a new team!"
  else
    render 'new'
  end

end

def edit
  redirect_to root_path unless @current_user

  @team = Team.find(params[:id])
end

def update
  redirect_to root_path unless @current_user

  @team = Team.find(params[:id])
  @team.update(params_team)

  if @team.save
    redirect_to team_path(@team), notice: "You edited the team succesfully!"
  else
    render 'edit'
  end
end

def destroy
  redirect_to root_path unless @current_user

  @team = Team.find(params[:id])
  @team.destroy
  redirect_to teams_path, notice: "You've succesfully deleted this team!"
end

    private
      def params_team
        params.require(:team).permit(:name, :owner, :img_url, :wins, :losses)
      end

end
