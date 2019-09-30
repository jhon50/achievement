class Death < ApplicationRecord
  include AchievementCounter

  belongs_to :user

  after_save :update_achievement

  private

  def update_achievement
    perform_counter(:death_count, user, user.death_count + 1)
  end
end
