class StickysController < ApplicationController
  def index
    @stickys = Sticky.all
  end

  def show
    @sticky = Sticky.find(params[:id])
  end

  def new
    @sticky = Sticky.new
  end

  def create
    @sticky = Sticky.new(stickys_params)

    if @sticky.save
      redirect_to stickys_path
    else
      render :new
    end
  end

  private

  def stickys_params
    params.require(:sticky).permit(:title, :author, :body )
  end

end
