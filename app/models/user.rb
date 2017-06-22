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

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

end