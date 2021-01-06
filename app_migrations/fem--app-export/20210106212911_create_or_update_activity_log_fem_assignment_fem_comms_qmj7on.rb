require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogFemAssignmentFemCommsQmj7on < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'fem_assignment'
    self.schema = 'fem'
    self.table_name = 'activity_log_fem_assignment_fem_comms'
    self.fields = %i[select_activity activity_date select_record_from_dynamic_model__fem_contacts select_record_from_dynamic_model__fem_addresses select_direction select_who select_result select_next_step follow_up_when follow_up_time notes protocol_id]
    self.table_comment = 'Activitylog: Communications'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
