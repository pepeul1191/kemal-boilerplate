require "../../config/models"

get "/departamento/listar" do
  departamentos = Departamento.all
  if departamentos
    departamentos.each do |departamento|
      puts "id : #{departamento.id} - nombre : #{departamento.nombre}"
    end
  end
  "departamento listar"
end