class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true #空欄
	validates :body, presence: true, length: {maximum: 200} #200文字以内
end
