class CommentMailerPreview < ActionMailer::Preview
	def new_comment
		comment = Comment.last
		CommentMailer.new_comment(comment)
	end
end