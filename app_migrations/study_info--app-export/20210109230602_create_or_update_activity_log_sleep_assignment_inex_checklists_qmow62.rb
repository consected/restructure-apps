require 'active_record/migration/app_generator'
class CreateOrUpdateActivityLogSleepAssignmentInexChecklistsQmow62 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.belongs_to_model = 'sleep_assignment'
    self.schema = 'study_info'
    self.table_name = 'activity_log_sleep_assignment_inex_checklists'
    self.fields = %i[signed_no_yes e_signed_document e_signed_status e_signed_how e_signed_at e_signed_by e_signed_code notes]
    self.table_comment = 'Activitylog: Inclusion / Exclusion'
    self.fields_comments = {}
    self.no_master_association = false

    
    create_or_update_activity_log_tables
    create_activity_log_trigger
  end
end
