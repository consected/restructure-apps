require 'active_record/migration/app_generator'
class CreateOrUpdateSleepIncidentalFindingsQmq9h3 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_incidental_findings'
    self.fields = %i[other_notes]
    self.table_comment = 'Dynamicmodel: Incidental Findings'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
