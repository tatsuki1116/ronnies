class PostComment < ApplicationRecord
		def create
		post = Post.find(params[:post_id])
	    post_comment = current_user.post_comments.new(post_comment_params)
	    post_comment.post_id = post.id
	    post_comment.save
	    redirect_to event_post_path(post)
	end



private
	def post_comment_params
	  params.require(:post_comment).permit(:user_id, :post_id, :comment)
	end
end
