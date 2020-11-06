module DreamsHelper

  def percentage_collected(dream)
    (dream.donations.dreams_sum_amount(dream.id).to_f / dream.money_objective) * 100
  end

  def has_image(dream)
    image_tag(dream.image.attached? ? dream.image : "no_image.png")
  end

  def has_avatar(donation)
    image_tag(donation.avatar.attached? ? donation.avatar : "saitama.jpg")
  end
end
