require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPs2NonEligiblesQmq88v < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps2_non_eligibles'
    self.fields = %i[any_questions_yes_no notes questions_for_pi_yes_no questions_for_pi_notes]
    self.table_comment = 'Dynamicmodel: Sleep Phone Screen Part 2 Ineligible'
    self.fields_comments = {"any_questions_yes_no":"Do you have any questions for me at this time?","notes":"*Address questions and record them below*\n\n*Do not enter personal health information here*","questions_for_pi_yes_no":"*also has questions for PI?","questions_for_pi_notes":"I will give your contact information to the research team at Sample Institution, \nand our study PI, Dr. Suzanne Bertisch, will reach out to you as soon \nas possible.  Can I please confirm the contact information I have for you?\n\n*Scroll to Participant Details to check and add any contact information*\n\n*Do not enter personal health information here*"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
