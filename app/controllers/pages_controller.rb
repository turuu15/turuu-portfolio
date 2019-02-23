class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  	@blog = Blog.all
  	@skills = Skill.all
  end
end
