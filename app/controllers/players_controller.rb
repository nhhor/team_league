class PlayersController < ApplicationController

  # EPICODUS' lesson: Adding Players to Record Store walkthrough reccomended no SONGS index, added anyways.
  # def index
  #   @teams = Team.all
  #   @players = Players.all
  #   render :index
  # end
  # NOT WORKING ABOVE

  def new
    @team = Team.find(params[:team_id])
    @player = @team.players.new
    render :new
  end

  def create
    @team = Team.find(params[:team_id])
    @player = @team.players.new(player_params)
    if @player.save
      redirect_to team_path(@team)
    else
      render :new
    end
  end

  def show
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
    render :show
  end

  def edit
    @team = Team.find(params[:team_id])
    @player = Player.find(params[:id])
    render :edit
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to team_path(@player.team)
    else
      render :edit
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to team_path(@player.team)
  end

  private
    def player_params
      params.require(:player).permit(:name)
    end

end
