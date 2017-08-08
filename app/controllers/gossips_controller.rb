class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.corsaire = current_corsaire
    if @gossip.save  
      redirect_to @gossip
    else
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

  def show
    @gossip = Gossip.find(params[:id])
  end

  private
    def gossip_params
      params.require(:gossip).permit(:content)
    end

end
