require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsPossiblyEligiblesQmow5d < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_possibly_eligibles'
    self.fields = %i[consent_to_pass_info_to_partner_yes_no consent_to_pass_info_to_partner_2_yes_no any_questions_yes_no notes contact_info_notes]
    self.table_comment = 'Dynamicmodel: Sleep Phone Screen Possibly Eligible'
    self.fields_comments = {"consent_to_pass_info_to_partner_yes_no":"Thank you for your time and for answering our questions.  \nThe next step is for the Principal Investigator of our study\nto review the answers to the questions we just discussed.\n\nIn order to do this I will need to share the responses you’ve \ngiven me and your contact information with our \ncollaborating researchers at Sample Institution.\n\nYou may receive a follow-up phone call from either me or \nthe Principal Investigator, Dr. Suzanne Bertisch, \nto get clarification on some of the questions that I asked you today.\n\nI will also be contacting you to let you know whether or not \nyou are eligible for the study. If you are eligible, \nI will let you know the next steps at that time.\n\nIs it okay if I share your information with our \ncollaborating researchers at Sample Institution for eligibility review?","consent_to_pass_info_to_partner_2_yes_no":"Okay - just to confirm, your information will be kept completely secure\nand private, in a locked environment only accessible by approved researchers. \n\nAccess to your information at Sample Institution will be removed once the\nstudy has finished.  Does that alleviate any concerns you may have?\n\nIf you'd still prefer not to participate I understand.","any_questions_yes_no":"Do you have any questions for me at this time?","notes":"*address questions*","contact_info_notes":"Okay – as I mentioned, I will call you back to inform you of your \neligibility status. What are good days/times to call you? \nIt may take up to 10 days for us to make a determination."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
