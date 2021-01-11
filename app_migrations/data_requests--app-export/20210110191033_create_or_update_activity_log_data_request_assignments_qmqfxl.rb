require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogDataRequestAssignmentsQmqfxl < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'data_request_assignment'
    self.schema = 'data_requests'
    self.table_name = 'activity_log_data_request_assignments'
    self.fields = %i[created_by_user_id status notes next_step follow_up_date]
    self.table_comment = 'Activitylog: Re Structure Data Request Form'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
