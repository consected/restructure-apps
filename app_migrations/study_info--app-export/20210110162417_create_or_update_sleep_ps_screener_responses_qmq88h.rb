require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsScreenerResponsesQmq88h < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_screener_responses'
    self.fields = %i[comm_clearly_in_english_yes_no give_informed_consent_yes_no_dont_know give_informed_consent_notes outcome notes]
    self.table_comment = 'Dynamicmodel: Sleep Screener Responses'
    self.fields_comments = {"comm_clearly_in_english_yes_no":"Is the subject able to communicate clearly in English?","give_informed_consent_yes_no_dont_know":"Does the subject appear to be able to give informed consent?","give_informed_consent_notes":"Notes","outcome":"Set the eligibility status for the participant.","notes":"Any notes about the screener can be recorded below."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
