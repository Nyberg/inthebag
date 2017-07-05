module User::Contract
  class New < Reform::Form

    property  :username
    property  :email
    property  :password, virtual: true
    property  :auth_meta_data

    validates :username, :email, :password, presence: true
    validates_uniqueness_of :email
    validates_uniqueness_of :username

  end
end