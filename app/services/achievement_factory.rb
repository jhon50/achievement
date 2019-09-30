# this is necessary because autoload gets confused when top level class has the same name
require_dependency  'achievement/collected_coin'
require_dependency  'achievement/death'
require_dependency  'achievement/killed_monster'

class AchievementFactory

  def initialize(user, model)
    @user = user
    @model = model
  end

  def call
    case @model
    when 'CollectedCoin'
      Achievement::CollectedCoin.new(user: @user).give?
    when 'KilledMonster'
      Achievement::KilledMonster.new(user: @user).give?
    when 'Death'
      Achievement::Death.new(user: @user).give?
    end

  end

  private
end