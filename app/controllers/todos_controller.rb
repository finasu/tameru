class TodosController < ApplicationController
  
  def index
    @todos = Todo.order('created_at').all
    @status = ['todo', 'doing', 'done']  
  end
  
  def store
    todo = Todo.new
    todo.task = params[:todo]
    todo.state = params[:state]
    todo.save
    
    flash[:success] = "タスクを作成しました。"
    redirect_to '/todos'
  end
  
  def show
    @todo = Todo.find_by(id: params[:id])
    @status = ['todo', 'doing', 'done']
  end
  
  def update
    todo = Todo.find_by(id: params[:id])
    todo.task = params[:todo]
    todo.state = params[:state]
    todo.save

    flash[:success] = "タスクを更新しました。"
    redirect_to '/todos'
  end
  
  def destroy
    todo = Todo.find_by(id: params[:id])
    todo.destroy
    
    flash[:success] = "タスクを削除しました。"
    redirect_to '/todos'
  end
  
end
