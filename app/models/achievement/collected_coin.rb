class Achievement::CollectedCoin < Achievement

  def give?
    super(:coin_count, :collected_coin)
  end

  def achievements
    [1, 100, 1000, 10000, 100000]
  end
end