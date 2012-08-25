# encoding: utf-8

module Liking
  module LikesHelper
    
    def like_for resource

      user_ids = Like.where(:resource_id => resource.id, :resource_type => resource.class).pluck(:user_id)

      if user_ids.empty?
        link_to "<i class='icon-heart'></i> 喜欢".html_safe,
                liking.polymorphic_path(:like, resource.class.to_s.foreign_key => resource.id),
                  :method => :post,
                  :class => "btn btn-small"
      elsif current_user and user_ids.include?(current_user.id)
        link_to "<i class='icon-heart icon-red'></i> #{user_ids.size}人喜欢".html_safe,
                liking.polymorphic_path(:like, resource.class.to_s.foreign_key => resource.id),
                  :method => :delete,
                  :class => "btn btn-small"
      else
        link_to "<i class='icon-heart'></i> #{user_ids.size}人喜欢".html_safe,
                liking.polymorphic_path(:like, resource.class.to_s.foreign_key => resource.id),
                  :method => :post,
                  :class => "btn btn-small"
      end
    end
    
  end
end
