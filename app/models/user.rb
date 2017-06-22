class User < ActiveRecord::Base
  validates :username, :password, presence: true

  def self.authenticate(login_credentials)
    user = User.find_by(username: login_credentials[:username])
    if user
      user.password == login_credentials[:password]
    else
      false
    end
  end

end