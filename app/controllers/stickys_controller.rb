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

  def edit
    @sticky = Sticky.find(params[:id])
  end

  def update
    @sticky = Sticky.find(params[:id])

    if @sticky.update(sticky_params)
      redirect_to stickys_path
    else
      render :edit
    end
  end

  private

  def stickys_params
    params.require(:sticky).permit(:title, :author, :body )
  end

end
