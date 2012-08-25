module Liking
  class Like < ActiveRecord::Base
    # attr_accessible :title, :body
    belongs_to :user
    belongs_to :resource, :polymorphic => true
    validates :user_id, :uniqueness => { :scope => [:resource_id, :resource_type] }
  end
end
