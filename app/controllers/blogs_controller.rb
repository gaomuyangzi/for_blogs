class BlogsController < ApplicationController
    def create
        wa = Blog.find_or_create_by(title:"TestTitle")
        p wa
    end
end