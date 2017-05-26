class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
  
  def welcome(candidato_email)
	@candidato = Candidato.find_by_email candidato_email
	mail(:to => @candidato.email, :subject => "Hi #{@candidato.nome}, Welcome to HELL", :body => "NADA")
  end
end
