class Achievement::KilledMonster < Achievement

  def give?
    achievements.each do |achievement|
      user.kill_count.each do |key, value|
        create_achievement(user, achievement, key) if value >= achievement
      end
    end
  end

  def create_achievement(user, value, slug)
    Achievement.create(
          user: user,
          kind: Achievement.kinds[:killed_monster],
          value: value,
          slug: slug
      )
  end

  def achievements
    [1, 10, 25, 50, 100]
  end
end