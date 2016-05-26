class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment
    #@categori = @categori.item
    mail to: "david.junior1412@gmail.com",
        subject: "O noua inregistrare"     
  end


end
