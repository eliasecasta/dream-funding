module DreamsHelper
  def percentage_collected(dream)
    (dream.donations.dreams_sum_amount(dream.id).to_f / dream.money_objective) * 100
  end

  def image?(dream)
    image_tag(dream.image.attached? ? dream.image : 'no_image.png')
  end

  def avatar?(current_user)
    image_tag(current_user.avatar.attached? ? current_user.avatar : 'saitama.jpg')
  end
end
