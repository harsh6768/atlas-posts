class Comment < ApplicationRecord
  #when we create child model It belongs to the parent 
  belongs_to :post
end
