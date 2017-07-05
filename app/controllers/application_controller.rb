class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def tyrant
    Tyrant::Session.new(request.env['warden'])
  end
  helper_method :tyrant

  def current_user
    tyrant.current_user
  end

  private
  def _run_options(options)
    options.merge( "current_user" => tyrant.current_user )
  end
end
