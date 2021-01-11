require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsEligibilityFollowupsQmq9hj < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_ps_eligibility_followups'
    self.fields = %i[outcome any_questions_yes_no notes interested_yes_no not_interested_notes contact_pi_yes_no additional_questions_yes_no consent_to_pass_info_to_partner_yes_no consent_to_pass_info_to_partner_2_yes_no contact_info_notes]
    self.table_comment = 'Dynamicmodel: Uni Eligibility Follow Up'
    self.fields_comments = {"outcome":"Select the Uni Phone Screen eligibility based on the PI review","notes":"Additional Notes","interested_yes_no":"Are you interested in participating?","not_interested_notes":"May I ask you why you are not interested? \n*(will record reason, for example, too busy)*. \n\nThank you for your time.","contact_pi_yes_no":"*Address questions*\n\n*If they ask why they are not eligible:* \n\n* **NOTE**: if the ineligibility was due to the \nEpworth Sleepiness Scale, \nreturn to that section to reiterate the details of why they are not eligible.  \nOtherwise, continue:*\n\nActually the way that our system works, \nI’m not able to determine exactly which question caused you to be \nineligible for the study right now, but if you have concerns \nor would like to discuss it further with our study PI, \nI would be happy to put you in touch with her if you would like. \n\nIs that something you would like to do?","additional_questions_yes_no":"Okay, I understand.  \n\nDo you have any other questions for me at the moment?","consent_to_pass_info_to_partner_yes_no":"Consented?","consent_to_pass_info_to_partner_2_yes_no":"Consented?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
