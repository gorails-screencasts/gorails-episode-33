class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :user_id, :body, presence: true

  before_create :post_to_twitter

  def post_to_twitter
    user.twitter.update(body)
  end
end
