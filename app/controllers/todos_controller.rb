class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    puts '[index]'
    @todos = Todo.all
  end
  
  def show 
    puts `[show]`
  end
  
  def new
    puts `[new]`
    @todo = Todo.new
  end
  
  def create
    puts `[create]`
    @todo = Todo.new(todo_params)
    @todo.user_id = current_user.id

    respond_to do |format|
      if @todo.save()
        format.html {redirect_to @todo, notice: '作成されました.'}
      else
        format.html {render :new}
      end
    end
  end
  
  def edit
    puts `[edit]`
  end
  
  def update
    puts `[update]`

    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo, notice: '変更しました.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def destroy
    puts `[destroy]`
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to root_url, notice: '削除しました.' }
    end
  end

  private
    def set_todo
      puts '[set_todo]'
      @todo = Todo.find(params[:id])
    end

    def todo_params
      params.require(:todo).permit(:title,:detail)
    end
end
