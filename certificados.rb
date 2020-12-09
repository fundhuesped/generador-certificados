require 'prawn'
require 'open3'
require 'csv'






CSV.foreach("Participantes.csv", :headers => true) do |row|

  diploma = Prawn::Document.new()
  diploma.font("Poppins/Poppins-Bold.ttf")
  diploma.font_size 41
  diploma.fill_color "FF0000"
  diploma.text_box "#{row['Nombre']}", :align => :center, :at => [0,500], :single_line =>true, :overflow => :shrink_to_fit
  diploma.render_file "temp.pdf"


  #java -jar pdftk-all.jar template.pdf stamp temp.pdf output output.pdf
  stdout_str, error_str, status = Open3.capture3('java', '-jar', 'pdftk-all.jar', 'DIPLOMA.pdf', 'stamp', 'temp.pdf', 'output', "CARPETA/Diploma #{row['Nombre']}.pdf")
  if !status.success?
    raise "did not work"
  end

end









