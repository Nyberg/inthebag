class OverviewController < ApplicationController

  def index
    render cell(Inthebag::Cell::Overview, nil)
  end

end
