require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogSleepAssignmentDiscussionsQmow8h < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'sleep_assignment'
    self.schema = 'study_info'
    self.table_name = 'activity_log_sleep_assignment_discussions'
    self.fields = %i[notes tag_select_contact_role prev_activity_type]
    self.table_comment = 'Activitylog: Sleep Discussions'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
