class Achievement::CollectedCoin < Achievement

  COIN_ACHIEVEMENT = [1, 100, 1000, 10000, 100000]

  def give?
    byebug
    # values = COIN_ACHIEVEMENT.select { |value| @user.coin_count >= value}
    #
    # return unless values.any?
    #
    # values.each { |value| super.create(type: TYPES[0].to_s, user: @user, value: value) }
  end
end