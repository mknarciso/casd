class ApplicationMailer < ActionMailer::Base
  default from: "casddir@gmail.com"
  layout 'mailer'
  def welcome(candidato_email)
	@candidato = Candidato.find_by_email candidato_email
	mail(:to => @candidato.email, :subject => "Bem vindo, #{@candidato.nome}", :body => "Você foi cadastrado.")
  end
end
