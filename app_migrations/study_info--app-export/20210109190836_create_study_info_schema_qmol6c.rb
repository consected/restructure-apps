require 'active_record/migration/app_generator'
class CreateStudyInfoSchemaQmol6c < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.owner = 'restradmin'
    create_schema
  end
end
