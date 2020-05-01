class AwsTextsController < ApplicationController

  def index
    @awstexts = AwsText.all
  end

  def show
    @awstext = AwsText.find(params[:id])
  end
end
