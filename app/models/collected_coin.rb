class CollectedCoin < ApplicationRecord
  include AchievementCounter

  belongs_to :user

  after_save :update_achievement

  private

  def update_achievement
    perform_counter(:coin_count, user, user.coin_count + value)
  end
end
