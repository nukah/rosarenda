class Subscriber < ActiveRecord::Base
  attr_accessible :email, :name
  before_save :generate_token
  validates :name, :presence => true
  validates :email, :presence => true,
                      :length => {:minimum => 3, :maximum => 254},
                      :uniqueness => true,
                      :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}
  private

  def generate_token
    code = Digest::SHA256.hexdigest(email.to_s + rand(10**15).to_s)
  end
end
