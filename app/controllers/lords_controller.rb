class LordsController < ApplicationController 
  def index
    @lords = Lord.all
  end

  def show
    @lord = Lord.find(params[:id])
  end
end
