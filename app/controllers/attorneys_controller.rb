class AttorneysController < ApplicationController
  def index
    @attorneys = Attorney.ordered
  end
end
