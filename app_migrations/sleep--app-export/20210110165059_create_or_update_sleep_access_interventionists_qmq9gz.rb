require 'active_record/migration/app_generator'
class CreateOrUpdateSleepAccessInterventionistsQmq9gz < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_access_interventionists'
    self.fields = %i[assign_access_to_user_id]
    self.table_comment = 'Dynamicmodel: Sleep Interventionist Access'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
