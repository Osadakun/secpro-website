class HomeController < ApplicationController
  def top
  end

  def create
    @member = Member.new(name: params[:name], plan: params[:times])
    @member.save
    redirect_to('/')
  end
end
