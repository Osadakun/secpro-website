class HomeController < ApplicationController
  def top
    @member = Member.all
  end

  def show
    @member = Member.find_by
  end
  def create
    @member = Member.new(name: params[:name], plan: params[:times])
    @member.save
    redirect_to('/')
  end
end
