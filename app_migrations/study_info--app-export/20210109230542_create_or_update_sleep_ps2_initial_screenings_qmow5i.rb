require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPs2InitialScreeningsQmow5i < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps2_initial_screenings'
    self.fields = %i[select_is_good_time_to_speak any_questions_blank_yes_no question_notes follow_up_date follow_up_time notes]
    self.table_comment = 'Dynamicmodel: Sleep Initial Screening Part 2'
    self.fields_comments = {"follow_up_date":"*Enter a follow up date and time if the subject wishes for a call back before continuing with the screening, or you left a voicemail.*","follow_up_time":"Follow up time","any_questions_blank_yes_no":"Did you have any questions for me about this study before \nwe go through the final screening questions?","question_notes":"*Respond to questions and take notes below*\n\n*Do not enter personal health information here*","notes":"Notes, questions or other information for follow up\n\n*Do not enter personal health information here*"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
