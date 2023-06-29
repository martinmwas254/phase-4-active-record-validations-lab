class Post < ApplicationRecord
    validates :title, presence: true
    validates :summary, length: { maximum: 250 }, presence: true
    validates :content, length: { minimum: 250 }, presence: true
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
    validate :title_not_true_facts

    def title_not_true_facts
      if title == "True Facts"
        errors.add(:title, "cannot be set to 'True Facts'")
      end
    end

end
