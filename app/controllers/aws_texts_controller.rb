class AwsTextsController < ApplicationController

  def index
    @awstexts = AwsText.all
  end
end
