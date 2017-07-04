class ApplicationMailer < ActionMailer::Base
  default from: "casddir@gmail.com"
  layout 'mailer'
  def sendMail(candidato_email, corpoDoEmail)
	  @candidato = Candidato.find_by_email candidato_email
	  mail(:to => candidato_email, :subject => "Bem vindo, #{@candidato.nome}, segue o link do seu formulário: ", :body => corpoDoEmail)
  end
end