require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsEligiblesQmow58 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_eligibles'
    self.fields = %i[notes interested_yes_no not_interested_notes consent_to_pass_info_to_partner_yes_no consent_to_pass_info_to_partner_2_yes_no contact_info_notes]
    self.table_comment = 'Dynamicmodel: Sleep Phone Screen Eligible'
    self.fields_comments = {"interested_yes_no":"Are you interested in participating?","not_interested_notes":"May I ask you why you are not interested? \n*(will record reason, for example, too busy)*. \n\nThank you for your time.","consent_to_pass_info_to_partner_yes_no":"Wonderful. In order for you to participate I will need to give your \ncontact information to our collaborating researchers at \nSample Institution Hospital, and they will be conducting a final, \nshort screening survey to finalize your eligibility.  This means \nthat it’s still possible you may be ineligible for the study, \nhowever based on your responses so far you’re a great candidate.\n\nIs it okay with you if I give them your contact information?","consent_to_pass_info_to_partner_2_yes_no":"Okay - just to confirm, your information will be kept completely secure \nand private, in a locked environment only accessible by approved researchers. \nAccess to your information at Sample Institution will be removed once the \nstudy has finished.  Does that alleviate any concerns you may have?  \nIf you’d still prefer not to participate I understand.","contact_info_notes":"Great.  I will give your information to the research managers at Sample Institution, \nRebecca and Lindsey, \nand one of them will reach out to you within the next week.  \n\nI will also send you an email confirmation when your information has been sent.  \n\nThey will be contacting you by email to send you some information about the study, \nbut they may also reach out to you by telephone in order \nto schedule your interview.  \n\nCan I please confirm the contact information I have for you?\n\n*Scroll to Participant Details to check and add any contact information*","notes":"Do you have any questions?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
