require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsSubjectContactsQmow7i < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_subject_contacts'
    self.fields = %i[notes follow_up_date follow_up_time]
    self.table_comment = 'Dynamicmodel: Subject Contact'
    self.fields_comments = {"follow_up_date":"If a follow up is required based on this contact, enter it here.\nFollow up date"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
