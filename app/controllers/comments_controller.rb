class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :load_commentable

  def index
  	 @comments = @commentable.comments
  end

  def new
  	@comment = @commentable.comments.new
  end

	def create
	  @comment = @commentable.comments.new(comment_params)  
	  if @comment.save
	    redirect_to [@commentable, :comments], notice: 'Comment created'
	  else
	    render :new
	  end
	end

  private

  def comment_params
    params.require(:comment).permit!
  end

  def load_commentable
  	resource, id = request.path.split('/')[1,2]
  	@commentable = resource.singularize.classify.constantize.find(id)
  end
end
