class PagesController < ApplicationController
  def home
    @most_viewed = Post.get_top_3_posts
    @short_reads = Post.short_read
    @specific_posts = Post.where_title_contains('er')
  end
end
