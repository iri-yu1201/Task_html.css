Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'

  #HTTPメソッド　URLにアクセス時どのコントローラのどのアクションを呼ぶ出すか　（get,postなど
end

  #カラムの追加／削除
  #rails g migration Addカラム名Toテーブル名 カラム名:型名
  #マイグレーションとはテーブルを新規に作成したりカラムの追加といった変更を行う機能

  #as: '名前'は名前付きルート（URLをわかりやすくコード内で分かりやすくするため）
