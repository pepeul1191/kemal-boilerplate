require "../../config/models"

get "/departamento/listar" do
  rpta = Nil
  departamentos = Departamento.all
  if departamentos
    rpta = Array(Hash(String, Int32 | String | Nil)).new
    departamentos.each do |departamento|
      #puts "id : #{departamento.id} - nombre : #{departamento.nombre}"
      r = {"id" => departamento.id, "nombre" => departamento.nombre}
      rpta << r
    end
  else
    rpta = "[]"
  end
  rpta.to_json
end