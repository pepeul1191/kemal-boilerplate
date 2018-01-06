require "granite_orm/adapter/sqlite"

class Departamento < Granite::ORM::Base
  adapter sqlite
  table_name departamentos
  primary id : Int64
  field nombre : String
end

class Provincia < Granite::ORM::Base
  adapter sqlite
  table_name provincias
  primary id : Int64
  field nombre : String
  field departamento_id : Int64
end