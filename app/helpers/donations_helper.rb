module DonationsHelper
  def avatar?(donation)
    image_tag(donation.avatar.attached? ? donation.avatar : 'saitama.jpg')
  end
end
