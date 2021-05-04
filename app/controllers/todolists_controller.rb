class TodolistsController < ApplicationController
  def new
    @list = List.new

  end
  def create
    list = List.new(list_params)#ローカル変数（@のない変数）はビューファイルへの受け渡しできない
    list.save
    redirect_to todolist_path(list.id)
  end
  def index
    @lists = List.all

  end
  def show
    @list = List.find(params[:id])
  end
  def edit
    @list = List.find(params[:id])
  end
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end
  def destroy
    list = List.find(params[:id])# データ（レコード）を1件取得
    list.destroy # データ（レコード）を削除
    redirect_to todolists_path
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title,:body, :image)
  end


end

#インスタンス変数 先頭に@をつける Viewと共有することで、コントローラからViewへのデータの受け渡しを行う

#def list_params
  #params.require(:モデル名).permit(:カラム名１, :カラム名２...)
#end
