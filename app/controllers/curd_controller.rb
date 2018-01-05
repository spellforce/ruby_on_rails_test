
class CurdController < ApplicationController
  def add_course
    @courses = Course.all
    @sid = params[:sid]
    @cid = params[:course_id]
    if @cid then
    @sc = Sc.new(:studentx_id => @sid,:course_id => @cid)
    @sc.save
    end
  end
end
