require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogSleepAssignmentPhoneScreen2sQmq89h < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'sleep_assignment'
    self.schema = 'study_info'
    self.table_name = 'activity_log_sleep_assignment_phone_screen2s'
    self.fields = %i[]
    self.table_comment = 'Activitylog: Partner Phone Screen'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
