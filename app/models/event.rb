class Event < ActiveRecord::Base

  attr_accessible :action, :host, :user

  belongs_to :company

  validates_presence_of :company, message: "invalid company/token"

end
