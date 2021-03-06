require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogSleepAssignmentMedNavsQmq89g < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'sleep_assignment'
    self.schema = 'study_info'
    self.table_name = 'activity_log_sleep_assignment_med_navs'
    self.fields = %i[notes select_result select_activity activity_date select_contact select_direction select_next_step follow_up_when follow_up_time]
    self.table_comment = 'Activitylog: Follow Ups'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
