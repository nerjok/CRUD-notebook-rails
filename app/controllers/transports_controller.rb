class TransportsController < ApplicationController
  def index
    @transports = Transport.all
  end

  def new
    @transport = Transport.new
    
  end

  def edit
    @transport = Transport.find(params[:id])
  end

  def update
    @transport = Transport.find(params[:id])
   
    if @transport.update(transport_params)
      redirect_to @transport
    else
      render 'edit'
    end
  end

  def destroy
    @transport = Transport.find(params[:id])
    @transport.destroy
   
    redirect_to transports_path
  end
  
  def show
    @transport = Transport.find(params[:id])
  end

  def create
  #render plain: params[:transport].inspect
  @transport = Transport.new(transport_params)
  
   if @transport.save
    redirect_to @transport
    else
      render 'new'
    end
  end

  private
  def transport_params
    params.require(:transport).permit(:title, :number)
  end
end
