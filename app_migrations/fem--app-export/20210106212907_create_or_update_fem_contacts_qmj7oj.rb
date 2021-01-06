require 'active_record/migration/app_generator'
class CreateOrUpdateFemContactsQmj7oj < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'fem'
    self.table_name = 'fem_contacts'
    self.fields = %i[rec_type data rank source tracker_history_id]
    self.table_comment = 'Dynamicmodel: Contact'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
