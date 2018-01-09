class MyValidator < ActiveModel::Validator
  def validate(title)
    case title
    when "Won't Believe"
      true
    when "Secret"
      true
    when "Top [number]"
      true
    when "Guess"
      true
    else
      false
    end
  end
end