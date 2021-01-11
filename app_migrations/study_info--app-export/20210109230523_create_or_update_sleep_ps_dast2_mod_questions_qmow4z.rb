require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsDast2ModQuestionsQmow4z < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_dast2_mod_questions'
    self.fields = %i[audit_c_eligible_yes_no number_days_drug_usage number_days_negative_feeling possibly_eligible_yes_no possibly_eligible_reason_notes notes]
    self.table_comment = 'Dynamicmodel: Sleep Dast 2'
    self.fields_comments = {"number_days_negative_feeling":"How many days in the past 12 months have you felt bad or guilty\nabout your drug use? \n\n*If subject responds that they do not use drugs, mark response as **0** *","number_days_drug_usage":"How many days in the past 3 months have you used drugs (excluding marijuana or CBD, and drugs prescribed by a clinician)?","possibly_eligible_yes_no":"*Based on the scores, the participant is ineligible. \nIf you believe the participant may be eligible, select **yes** and continue\nwith the screening.*","possibly_eligible_reason_notes":"Reason"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
