require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestAssignmentsQmqfxj < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_request_assignments'
    self.fields = %i[data_request_id]
    self.table_comment = 'Externalidentifier: Data Request Assignments'
    self.fields_comments = {}
    self.no_master_association = false


    create_or_update_external_identifier_tables :data_request_id, :bigint
    create_external_identifier_trigger :data_request_id
  end
end
