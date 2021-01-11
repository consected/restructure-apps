require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPs2EligiblesQmow7s < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps2_eligibles'
    self.fields = %i[notes interested_yes_no not_interested_notes review_consent_now_yes_no follow_up_date follow_up_time]
    self.table_comment = 'Dynamicmodel: Sleep Phone Screen Part 2 Eligible'
    self.fields_comments = {"notes":"Thank you for answering our remaining questions. \nYou are eligible to participate in this study! Do you have any questions? \n\n*Do not enter personal health information here*","interested_yes_no":"Are you interested in participating?","not_interested_notes":"May I ask you why you are not interested? \n\nThank you for your time. \n\n*Record reason, for example, too busy*\n\n*Do not enter personal health information here*","review_consent_now_yes_no":"Wonderful. The next step to enrolling in the study is to complete \nthe informed consent.\n\nWe can go through this now together if you have a few more \nminutes and access to your email account now. \n\nShall we go through the informed consent together?","follow_up_date":"I will email you the consent document for you to review.\n\nIs there a more convenient time to go through this together and \ncomplete your enrollment?\n\nFollow up date"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
