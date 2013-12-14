class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find params[:id]
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new request_params

    if @request.save
      redirect_to request_path(request)
    else
      render 'requests/new'
    end
  end

  private

  def request_params
    params.require(:request).permit :gist_url, :title, :description
  end
end
