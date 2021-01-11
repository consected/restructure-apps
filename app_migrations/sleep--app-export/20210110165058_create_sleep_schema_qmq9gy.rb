require 'active_record/migration/app_generator'
class CreateSleepSchemaQmq9gy < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.owner = 'restradmin'
    create_schema
  end
end
