class User::Create < Trailblazer::Operation
  step Nested(:new_user)
  step Contract::Validate(key: :user)
  step :digest_user!
  step Contract::Persist()
  # step :send_email!

  def new_user(options, **)
    User::New
  end

  def digest_user!(options, **)
    auth = Tyrant::Authenticatable.new(options["contract.default"])
    auth.digest!(options["contract.default"].password)
    auth.confirmed!
    auth.sync
  end
end