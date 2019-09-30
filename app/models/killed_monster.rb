class KilledMonster < ApplicationRecord
  include AchievementCounter

  belongs_to :user
  belongs_to :monster

  after_save :update_achievement

  scope :by_name, ->(name) {
    where(name: name)
  }

  private

  def update_achievement
    counter = (user.kill_count&.dig(monster.name) || 0) + 1
    perform_counter(:kill_count,
                    user,
                    kill_hash.with_indifferent_access.merge({"#{monster.name}": counter}))
  end

  def kill_hash
    user.kill_count || {}
  end
end
