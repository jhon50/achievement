class Achievement::Death < Achievement

  def give?
    super(:death_count, :death)
  end

  def achievements
    [1, 10, 25, 50, 100]
  end
end