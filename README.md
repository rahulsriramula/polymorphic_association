# README

This README would normally document whatever steps are necessary to get the
application up and running.

steps to create polymorphic association

1. rails g scaffold sponsor name:string place:string blog:string
created speaker and sponsor tables with the help of scaffolding

rake db:migrate

2.completed crud for speakers and sponsors a
added default routes

3.rails g model comment name:string:index commentable:references{polymorphic}
 created polymorphic table for speaker and sponsor comment table
 
 rake db:migrate


4.added    has_many :comments, as: :commentable in speaker and sponsor models

5.added   belongs_to :commentable, polymorphic: true in comment model

6.added routes to comments
 etc- resources :speakers do
        resources :comments
      end
      
      resources :sponsors do
        resources :comments
      end


7. added new comment route in speakers and sponsors index path

 like : new_speaker_comment_path(speaker.id)
        new_sponsor_comment_path(sponsor.id)


8.then added controller actions for comments

9.created index nd new and create actions for comments




