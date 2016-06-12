class SiguranceMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sigurance_mailer.new_sigurance.subject
  #
  def new_sigurance(sigurance)
	@sigurance = sigurance
    #@categori = @categori.item
    mail to: "david.junior1412@gmail.com",
        subject: "O noua inregistrare" 
  end
end
