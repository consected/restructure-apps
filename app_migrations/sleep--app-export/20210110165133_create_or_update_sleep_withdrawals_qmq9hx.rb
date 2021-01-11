require 'active_record/migration/app_generator'
class CreateOrUpdateSleepWithdrawalsQmq9hx < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_withdrawals'
    self.fields = %i[select_subject_withdrew_reason select_investigator_terminated lost_to_follow_up_no_yes no_longer_participating_no_yes notes]
    self.table_comment = 'Dynamicmodel: Sleep Withdrawal'
    self.fields_comments = {"select_subject_withdrew_reason":"If the subject withdrew, select the reason","select_investigator_terminated":"Did the investigator terminate the participant from the study for safety reasons, non-adherence, or another reason that would deter the participant from completing the study?","lost_to_follow_up_no_yes":"Was the subject \"lost to follow up\"?","no_longer_participating_no_yes":"Is there another reason the subject is no longer participating? Provide details in the notes below."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
