class RequestsController < ApplicationController
  def index
    @requests = Request.all.map { |r| RequestSerializer.new(r) }.to_json
  end

  def show
    @request = Request.find params[:id]
    @comment = Comment.new
  end

  def new
    @request = Request.new
    @tags = Tag.new
  end

  def create
    request = current_user.requests.new gist_url: request_params[:gist_url], title: request_params[:title], description: request_params[:description]
    build_tags request

    if request.save
      redirect_to request_path(request)
    else
      render 'requests/new'
    end
  end

  private

  def request_params
    params.require(:request).permit :gist_url, :title, :description, tags: [:names]
  end

  def build_tags(request)
    tags = parse_tags request_params[:tags][:names]

    tags.each do |tag|
      request.tags.new(name: tag)
    end
  end

  def parse_tags(tags)
    tags.split.map { |tag| tag[1..-1] }
  end

end
