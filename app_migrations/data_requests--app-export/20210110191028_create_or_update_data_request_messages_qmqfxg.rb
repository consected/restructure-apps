require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestMessagesQmqfxg < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_request_messages'
    self.fields = %i[message_notes created_by_user_id]
    self.table_comment = 'Dynamicmodel: Message'
    self.fields_comments = {"message_notes":"Message to requester"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
