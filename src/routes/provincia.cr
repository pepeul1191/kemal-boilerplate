get "/provincia/listar/:departamento_id" do |env|
  departamento_id = env.params.url["departamento_id"]
  "departamento_id : #{departamento_id}"
end