require 'active_record/migration/app_generator'
class CreateDataRequestsSchemaQmqfxb < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.owner = 'restradmin'
    create_schema
  end
end
