require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsAuditCQuestionsQmq88e < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_audit_c_questions'
    self.fields = %i[alcohol_frequency daily_alcohol six_or_more_frequency total_score possibly_eligible_yes_no possibly_eligible_reason_notes notes]
    self.table_comment = 'Dynamicmodel: Sleep Audit C'
    self.fields_comments = {"alcohol_frequency":"How often do you have a drink containing alcohol?","daily_alcohol":"How many standard drinks containing alcohol do you have on a typical day?","six_or_more_frequency":"How often do you have six or more drinks on one occasion?","total_score":"Score","possibly_eligible_reason_notes":"Reason"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
