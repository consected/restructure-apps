require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestAttribsQmqfxi < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_request_attribs'
    self.fields = %i[data_source]
    self.table_comment = 'Dynamicmodel: Requested Data'
    self.fields_comments = {"data_source":"Which ReStructure study are you requesting data from?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
