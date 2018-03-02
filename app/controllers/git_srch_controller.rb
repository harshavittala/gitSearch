class GitSrchController < ApplicationController
  require 'open-uri'
  def index
  end

  def go
  	session[:search] = params[:search]
  	session[:page] = 1
  	redirect_to git_srch_display_path
  end	

  def next
  	session[:page] = session[:page] + 1
  	redirect_to git_srch_display_path
  end

  def previous
  	session[:page] = session[:page] - 1
  	if(session[:page] == 0)
  		session[:page] = 1
  	end	
  	redirect_to git_srch_display_path
  end

  def first
  	session[:page] = 1
  	redirect_to git_srch_display_path
  end

  def last
  	a=JSON.parse(open("https://api.github.com/search/users?q="+session[:search]).read)
  	session[:page] = (a['total_count'] / 30).to_i
  	redirect_to git_srch_display_path
  end

  def display
  	a=open("https://api.github.com/search/users?q="+session[:search]+"&page="+session[:page].to_s).read
  	b=JSON.parse(a) 	
  	@users = b['items']
  end	
end

