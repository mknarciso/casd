class ApplicationMailer < ActionMailer::Base
  default from: "casddir@gmail.com"
  layout 'mailer'
  def sendMail(candidato_email, link)
  	@candidato = Candidato.find_by_email candidato_email
  	mail(:to => @candidato.email, :subject => "Bem vindo, #{@candidato.nome}", :body => "Preencha o formulario: " + link)
  end
end
