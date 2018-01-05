
class CurdController < ApplicationController
  def add_course
    @courses = Course.all
    @sid = params[:sid]
    @cid = params[:course_id]
    if @cid&&@sid then
        @student =  Studentx.find(@sid)
        a = @student.courses.size.to_i
        a = a - 1
        is_have_flag = 0
        for i in 0..a do
            course = @student.courses[i]
            puts course.cno
            if course.cno == @cid then
                is_have_flag = 1
            end
        end
        if is_have_flag == 1 then
            redirect_to(:action => 'index',:controller=>'welcome')
        else
            @sc = Sc.new(:studentx_id => @sid,:course_id => @cid)
            @sc.save
            redirect_to(:action => 'index',:controller=>'welcome')
         end
    end
  end
end
