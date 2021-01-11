require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestsSelectedAttribsQmqfxh < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_requests_selected_attribs'
    self.fields = %i[record_id data data_request_id disabled variable_name record_type]
    self.table_comment = 'Dynamicmodel: Selected Data Attributes'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
