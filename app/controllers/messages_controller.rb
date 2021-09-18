class MessagesController < ApplicationController
  belongs_to :users
  validates :body, presence: true
end
