require_dependency "liking/application_controller"

module Liking
  class LikesController < ApplicationController
    
    def create
      @like = Like.new
      @like.user = current_user
      @like.resource = @resource
      @like.save
      
      redirect_to :back
    end
  
    def destroy
      @like = Like.where(:user_id => current_user.id, :resource_id => @resource.id, :resource_type => @resource.class).first
      @like.try(:destroy)
      
      redirect_to :back
    end
    
    before_filter do |controller|
      unless current_user
        redirect_to :back
      end
    end
  
    before_filter do |controller|
      params.each do |key, value|
        if key =~ /^\w+_id/
          @resource = key.humanize.constantize.find(value)
        end
      end
    end
    
  end
end
