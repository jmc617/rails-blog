class Comment < ApplicationRecord
  attr_accessor :body
  belongs_to :post, optional: true
  belongs_to :user, optional: true
end
