class Achievement < ApplicationRecord
  belongs_to :user

  validates :value, uniqueness: { scope: :kind }, if: :no_slug?

  validates :value, uniqueness: { scope: :slug }, unless: :no_slug?

  enum kind: [:collected_coin, :death, :killed_monster]


  def give?(limiar, model)
    values = achievements.select { |value| user.send(limiar) >= value }

    return unless values.any?

    values.each do |value|
      Achievement.create(
          user: user,
          kind: Achievement.kinds[model],
          value: value
      )
    end
  end

  private

  def no_slug?
    slug.blank?
  end
end