class OverviewController < ApplicationController

  def index
    render cell(Inthebag::Cell::Overview, nil, context: {current_user: current_user})
  end

end
