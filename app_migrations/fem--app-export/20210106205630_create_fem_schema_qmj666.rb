require 'active_record/migration/app_generator'
class CreateFemSchemaQmj666 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.owner = 'restradmin'
    create_schema
  end
end
