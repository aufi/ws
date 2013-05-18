class Company < ActiveRecord::Base
  attr_accessible :name, :token

  has_many :events

  validates_presence_of :name

  before_save :generate_token

  private

  def generate_token
    return unless token.blank?
    len = 16
    self.token = rand(36**len).to_s(36)
  end

end
