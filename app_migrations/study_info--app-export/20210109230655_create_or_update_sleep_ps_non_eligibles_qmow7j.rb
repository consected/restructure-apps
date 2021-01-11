require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsNonEligiblesQmow7j < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_non_eligibles'
    self.fields = %i[any_questions_yes_no notes contact_pi_yes_no additional_questions_yes_no consent_to_pass_info_to_partner_yes_no consent_to_pass_info_to_partner_2_yes_no contact_info_notes]
    self.table_comment = 'Dynamicmodel: Sleep Phone Screen Non Eligible'
    self.fields_comments = {"any_questions_yes_no":"Do you have any questions for me at this time?","contact_pi_yes_no":"*Address questions*\n\n*If they ask why they are not eligible:* \n\n* **NOTE**: if the final screening element just performed was the \nEpworth Sleepiness Scale, or the question regarding internet access, \nreturn to that section to reiterate the details of why they are not eligible.  \nOtherwise, continue:*\n\nActually the way that our system works, \nI’m not able to determine exactly which question caused you to be \nineligible for the study right now, but if you have concerns \nor would like to discuss it further with our study PI, \nI would be happy to put you in touch with her if you would like. \n\nIs that something you would like to do?","additional_questions_yes_no":"Okay, I understand.  \n\nDo you have any other questions for me at the moment?","consent_to_pass_info_to_partner_yes_no":"Absolutely. In order for her to contact you I will need to \ngive your contact information to our collaborating \nresearchers at Sample Institution. \n\nIs that okay with you?","consent_to_pass_info_to_partner_2_yes_no":"Okay - just to confirm, your information will be kept completely secure \nand private, in a locked environment only accessible by approved researchers. \nAccess to your information at Sample Institution will be removed once the \nstudy has finished.  Does that alleviate any concerns you may have?  \nIf you'd still prefer not to participate I understand.","contact_info_notes":"Great.  I will give your contact information to the research team at \nSample Institution, and our study PI, Dr. Suzanne Bertisch, \nwill reach out to you as soon as possible.  \n\nCan I please confirm the contact information I have for you?\n\n*Scroll to Participant Details to check and add any contact information*","notes":"Additional Notes"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
