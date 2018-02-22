class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment
    @post = @comment.post

    mail to: @post.user.email,
    subject: "New comment posted for #{@post.title}" 
  end
end
