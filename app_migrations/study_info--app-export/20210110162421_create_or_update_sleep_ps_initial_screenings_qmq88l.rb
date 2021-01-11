require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsInitialScreeningsQmq88l < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_initial_screenings'
    self.fields = %i[select_is_good_time_to_speak any_questions_blank_yes_no question_notes select_still_interested follow_up_date follow_up_time notes select_may_i_begin]
    self.table_comment = 'Dynamicmodel: Sleep Initial Screening'
    self.fields_comments = {"question_notes":"*Respond to questions and take notes below*","select_still_interested":"Great.  If you are still interested in the study, would you be \nwilling to answer some\nquestions about your health and medical history to find out \nif you might qualify for the study? \nAnd is this a good time to talk?","follow_up_date":"Enter a follow up date and time if the subject wishes for a call back before continuing with the screening, or you left a voicemail.","follow_up_time":"Follow up time","notes":"Notes, questions or other information for follow up"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
