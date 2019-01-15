class Message < ApplicationRecord
  after_create_commit {MessageBroadcastJob.perform_later self }
  validates :content,presence: true,
      length: {minimum: 1,maximum: 108}

end
