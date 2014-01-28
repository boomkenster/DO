class PostsController < ApplicationController
#ActiveAdmin.register Blog do
  #...
 # controller do
    #...
  #  def permitted_params
   #   params.permit(:blog => [:name, :description])
    #end
  #end
#end

def new

@post = Post.new

end

def edit
  @post = Post.find(params[:id])
end

def update
  @posts = Post.find(params[:id])

  if @post.update(params[:post].permit(:title, :text))
    redirect_to @post
  else
    render 'edit'
  end
end


def create
	@post = Post.new(params[:post])
 
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end

end

def show
	@post = Post.find(params[:id].to_i)

end


def index
	@posts = Post.all
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy

  redirect_to posts_path
end
#	render text: params [:post].inspect
	private
	def post_params
		params.require(:post).permit(:title, :text)
	end



end