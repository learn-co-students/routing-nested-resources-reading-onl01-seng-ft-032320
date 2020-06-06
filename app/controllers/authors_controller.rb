class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

  # def posts_index
  #   @author = Author.find_by_id(params[:id])
  #   @posts = @author.posts
  #   # being lazy and using the post folder views 
  #   render template: 'posts/index'
  # end

  # def posts 
  #   @author = Author.find_by_id(params[:id])
  #   @post = @author.posts.find_by_id(params[:post_id])
  #   # being lazy and using the post folder views 
  #   render template: 'posts/show'
  # end
end
