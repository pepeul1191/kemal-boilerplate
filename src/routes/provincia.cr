require "../../config/models"

get "/provincia/listar/:departamento_id" do |env|
  departamento_id = env.params.url["departamento_id"]
  provincias = Provincia.all("WHERE departamento_id = ?", [departamento_id])
  if provincias
    provincias.each do |provincia|
      puts "id : #{provincia.id} - nombre : #{provincia.nombre}"
    end
  end
  "departamento_id : #{departamento_id}"
end