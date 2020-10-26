module DreamsHelper
  def percentage_collected(dream)
    (dream.donations.dreams_sum_amount(dream.id).to_f / dream.money_objective.to_f) * 100
  end
end
