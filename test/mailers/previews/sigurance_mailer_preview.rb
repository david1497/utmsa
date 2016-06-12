# Preview all emails at http://localhost:3000/rails/mailers/sigurance_mailer
class SiguranceMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/sigurance_mailer/new_sigurance
  def new_sigurance
    SiguranceMailer.new_sigurance
  end

end
