require 'active_record/migration/app_generator'
class CreateOrUpdateSleepScreeningsQmow81 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_screenings'
    self.fields = %i[eligible_for_study_blank_yes_no good_time_to_speak_blank_yes_no still_interested_blank_yes_no callback_date callback_time consent_performed_yes_no did_subject_consent_yes_no ineligible_notes eligible_notes not_interested_notes contact_in_future_yes_no]
    self.table_comment = 'Dynamicmodel: Sleep Informed Consent Review'
    self.fields_comments = {"eligible_for_study_blank_yes_no":"Select if the subject is eligible for the study. Then start the call and follow the script.\nEligible for study blank yes no","good_time_to_speak_blank_yes_no":"The next step to enrolling in the study is to complete the informed consent. \nYou should have been emailed a copy of the consent form. Did you receive it? \nDo you have a few minutes to review the consent form together now?","callback_date":"\u003ci\u003eEnter date and time to call back\u003c/i\u003e\nThanks and end call\n\nCallback date","ineligible_notes":"Record any notes from the call\n\n*Do not enter personal health information here*","not_interested_notes":"Record any notes from the call\n\n*Do not enter personal health information here*","contact_in_future_yes_no":"Did the participant give permission to contact in future?","consent_performed_yes_no":"Did informed consent get performed?\n\nIf it was not possible to complete the informed consent, and the \nsubject is still interested in participating, select *no* then\nsave this form and schedule a new Informed Consent Review.","did_subject_consent_yes_no":"Did the subject consent?\n\nIf *yes*, the subject will be enrolled in the study.\n\nIf *no*, the subject will be marked as opted-out of the study.","eligible_notes":"Notes regarding the informed consent review\n\n*Do not enter personal health information here*"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
