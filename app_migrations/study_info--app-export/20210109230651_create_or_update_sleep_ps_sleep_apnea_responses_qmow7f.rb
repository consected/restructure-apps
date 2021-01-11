require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsSleepApneaResponsesQmow7f < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_sleep_apnea_responses'
    self.fields = %i[diagnosed_yes_no use_treatment_yes_no severity notes]
    self.table_comment = 'Dynamicmodel: Sleep Apnea Responses'
    self.fields_comments = {"diagnosed_yes_no":"Have you been diagnosed with sleep apnea by a doctor?","use_treatment_yes_no":"Do you currently use treatment?","severity":"Do you remember if you were diagnosed with mild/moderate/severe"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
