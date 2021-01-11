require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogSleepAssignmentsQmq9i6 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'sleep_assignment'
    self.schema = 'sleep'
    self.table_name = 'activity_log_sleep_assignments'
    self.fields = %i[select_who select_record_from_player_contacts follow_up_when follow_up_time notes activity_date select_activity select_record_from_addresses select_direction select_result select_next_step]
    self.table_comment = 'Activitylog: Recruitment & Logistics'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
