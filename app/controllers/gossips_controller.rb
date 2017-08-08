class GossipsController < ApplicationController

  before_action :logged_in_corsaire, only: [:new, :create, :edit, :update, :destroy]

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.corsaire = current_corsaire
    if @gossip.save  
      flash[:success] = "You've just sent a gossip, congrats!"
      redirect_to gossips_path
    else
      flash[:danger] = "Can't take your gossip, sorry..."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy
  end

  def index
    @gossips = Gossip.all
  end


  private
    def gossip_params
      params.require(:gossip).permit(:content)
    end

end
