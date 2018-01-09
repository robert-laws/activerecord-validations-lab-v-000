class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: ["Fiction","Non-Fiction"]}
  validates :clickbait, on: :title 

  def clickbait
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
