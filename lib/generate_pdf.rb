require 'prawn'
require 'prawn/table'
 
 #backimg="#{Rails.root}/app/assets/images/CESDt.png"
 
module GeneratePdf
  PDF_OPTIONS = {
    # Escolhe o Page size como uma folha A4
    :page_size   => "A4",
    # Define o formato do layout como portrait (poderia ser landscape)
    :page_layout => :portrait,
    # Define a margem do documento
    :margin      => [40, 75],
    #imagem de fund
    :background => "#{Rails.root}/app/assets/images/CESDt.png",
    :top_margin => 100
  }
 
  def self.candidato candidatos
    # Apenas uma string aleatório para termos um corpo de texto pro contrato
    #lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec elementum nulla id dignissim iaculis. Vestibulum a egestas elit, vitae feugiat velit. Vestibulum consectetur non neque sit amet tristique. Maecenas sollicitudin enim elit, in auctor ligula facilisis sit amet. Fusce imperdiet risus sed bibendum hendrerit. Sed vitae ante sit amet sapien aliquam consequat. Duis sed magna dignissim, lobortis tortor nec, suscipit velit. Nulla sit amet fringilla nisl. Integer tempor mauris vitae augue lobortis posuere. Ut quis tellus purus. Nullam dolor mauris, egestas varius ligula non, cursus faucibus orci sectetur non neque sit amet tristique. Maecenas sollicitudin enim elit, in auctor ligula facilisis sit amet. Fusce imperdiet risus sed bibendum hendrerit. Sed vitae ante sit amet sapien aliquam consequat."
 
    Prawn::Document.new(PDF_OPTIONS) do |pdf|
    #Prawn::Document.generate('explicit.pdf') do |pdf|
      # Define a cor do traçado
      pdf.fill_color "666666"
      # Cria um texto com tamanho 30 PDF Points, bold alinha no centro
      pdf.move_down 40
      pdf.text "Candidatos Aprovados", :size => 32, :style => :bold, :align => :center
      # Move 80 PDF points para baixo o cursor
      pdf.move_down 80
      pdf.text "<b>Inscrição</b>                            <b>Nome</b>", :size => 12, :inline_format => true
      #canddata = [["Inscrição", "Nome"]]
      x=0
      first = true
      candidatos.each do |cand|
          pdf.text "#{cand.inscricao}                             #{cand.nome}", :size => 12, :align => :justify, :inline_format => true
          x=x+1
          if x%30==0 and first
            pdf.start_new_page(:top_margin => 100)
            first = false
            pdf.text "<b>Inscrição</b>                            <b>Nome</b>", :size => 12, :inline_format => true
          elsif x%40==0
            pdf.start_new_page(:top_margin => 100)
            pdf.text "<b>Inscrição</b>                            <b>Nome</b>", :size => 12, :inline_format => true
          end
          
      end
      #table(canddata,:header => true)
      # Escreve o texto do contrato com o tamanho de 14 PDF points, com o alinhamento justify
      #pdf.text "#{lorem_ipsum}", :size => 12, :align => :justify, :inline_format => true
      # Move mais 30 PDF points para baixo o cursor
      #pdf.move_down 30
      # Escreve o texto com os detalhes que o usuário entrou
      #pdf.text "Detalhes", :size => 12, :align => :justify, :inline_format => true
      # Move mais 30 PDF points para baixo o cursor
      #pdf.move_down 10
      # Adiciona o nome com 12 PDF points, justify e com o formato inline (Observe que o <b></b> funciona para deixar em negrito)
      #pdf.text "Com o cliente: <b>#{name}</b> por R$Preco", :size => 12, :align => :justify, :inline_format => true
      # Muda de font para Helvetica
      #pdf.font "Helvetica"
      # Inclui um texto com um link clicável (usando a tag link) no bottom da folha do lado esquerdo e coloca uma cor especifica nessa parte (usando a tag color)
      #pdf.text "Link Para o Manul do Prawn<link href='http://prawnpdf.org/manual.pdf'> <color rgb='5ca3e6'>clicável</color></link>", :size => 10, :inline_format => true, :valign => :bottom, :align => :left
      # Inclui em baixo da folha do lado direito a data e o némero da página usando a tag page
      pdf.number_pages "Gerado: #{(Time.now).strftime("%d/%m/%y as %H:%M")} - Página <page>", :start_count_at => 0, :page_filter => :all, :at => [pdf.bounds.right - 140, 7], :align => :right, :size => 8
      #spending_labels = {}
      #candidatos.each_with_index {|s,i| spending_labels[i] = s[0].to_s}
      pdf.render_file('public/candidatos_aprovados.pdf')
    end
  end
end