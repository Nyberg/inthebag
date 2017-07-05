class UsersController < ApplicationController

  def index
    render cell(User::Cell::Index, nil)
  end

  def new
    result = run User::New
    render cell(User::Cell::New, result['model'],context: { form: result['contract.default']})
  end

  def create
    result = run User::Create
    render cell(User::Cell::New, result['model'], context: { form: result['contract.default']})
  end

end
