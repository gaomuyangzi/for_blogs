class BlogsController < ApplicationController
    def create
      Blog.find_or_create_by(title:"TestTitle")
    end
end

