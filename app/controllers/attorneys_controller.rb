class AttorneysController < ApplicationController
  def index
    @attorneys = Attorney.ordered
  end

  def show
    @attorney = Attorney.find params[:id]
  end
end
