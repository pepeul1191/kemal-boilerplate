require "../../config/models"

get "/provincia/listar/:departamento_id" do |env|
  env.response.content_type = "application/json"
  rpta = nil
  departamento_id = env.params.url["departamento_id"]
  provincias = Provincia.all("WHERE departamento_id = ?", [departamento_id])
  if provincias
    rpta = Array(Hash(String, Int32 | String | Nil)).new
    provincias.each do |provincia|
      #puts "id : #{provincia.id} - nombre : #{provincia.nombre}"
      r = {"id" => provincia.id, "nombre" => provincia.nombre}
      rpta << r
    end
  else
    rpta = "[]"
  end
  rpta.to_json
end