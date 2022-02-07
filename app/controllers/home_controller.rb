class HomeController < ApplicationController
  def top
    @member = Member.all.order(plan: :asc)
    @cnt = Count.find(1)
    @cnt.save
  end

  def show
    @member = Member.find_by(id: params[:id])
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    @member.destroy
    @member.save
    redirect_to('/')
  end

  def create
    @member = Member.new(name: params[:name], plan: params[:times])
    @member.save
    @cnt = Count.find(1)
    @cnt.counter += 1
    @cnt.save
    redirect_to('/')
  end
end
