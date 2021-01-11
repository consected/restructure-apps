require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPiFollowUpsQmq889 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_pi_follow_ups'
    self.fields = %i[pre_call_notes call_notes]
    self.table_comment = 'Dynamicmodel: Pi Follow Up'
    self.fields_comments = {"pre_call_notes":"Notes in preparation for the follow up call","call_notes":"Notes from follow up call"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
