module AchievementCounter
  extend ActiveSupport::Concern

  def perform_counter(attribute, user, counter)
    user.update_attribute(attribute, counter)

    AchievementFactory.new(user, self.class.name).call
  end
end