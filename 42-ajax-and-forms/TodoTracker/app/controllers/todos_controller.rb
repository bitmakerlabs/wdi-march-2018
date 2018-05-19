class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new
    @todo.content = params[:todo][:content]

    if @todo.save

    
        respond_to do |f|


          f.html do
            if request.xhr?
            render partial: 'content' , locals: { t: @todo}  

          else
            redirect_to root_url
            end

          end  
          f.json {render json: {data: @todo}}
        end

      
    end
  end

  def index
    @todos = Todo.all
    @todo = Todo.new
    
  end
end
