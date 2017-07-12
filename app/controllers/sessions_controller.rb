class SessionsController < ApplicationController

  def form
    render cell(Session::Cell::Form, nil)
  end

  def login
    result = run Session::Login
    if result.success?
      tyrant.sign_in!(result["model"])
      return redirect_to root_path
    end
    redirect_to login_path
  end

  def logout
    tyrant.sign_out!
    redirect_to root_path
  end

end
