require 'active_record/migration/app_generator'
class CreateOrUpdateFemSubjectsQmj7oh < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.table_name = 'fem_subjects'
    self.fields = %i[first_name last_name middle_name nick_name birth_date source tracker_history_id]
    self.table_comment = 'Dynamicmodel: Subject'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
