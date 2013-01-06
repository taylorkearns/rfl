class PracticeAreasController < ApplicationController
  def index
    @practice_areas = PracticeArea.ordered
  end

  def show
    @practice_area = PracticeArea.find params[:id]
  end
end
