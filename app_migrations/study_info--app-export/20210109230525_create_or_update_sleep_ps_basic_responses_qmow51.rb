require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPsBasicResponsesQmow51 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps_basic_responses'
    self.fields = %i[reliable_internet_yes_no conditions_yes_no conditions_notes cbt_yes_no cbt_how_long_ago cbt_notes sleep_times_yes_no sleep_times_notes work_night_shifts_yes_no number_times_per_week_work_night_shifts narcolepsy_diagnosis_yes_no_dont_know narcolepsy_diagnosis_notes antiseizure_meds_yes_no seizure_in_ten_years_yes_no major_psychiatric_disorder_yes_no possibly_eligible_yes_no possibly_eligible_reason_notes notes]
    self.table_comment = 'Dynamicmodel: Sleep Basic Responses'
    self.fields_comments = {"reliable_internet_yes_no":"Do you have access to reliable internet connection \n(the program will have online components), and access to a digital device?","conditions_yes_no":"Do you have any condition that will prevent you from participating \nin this study over the next 3-6 months, such as a severe medical \nor psychiatric disease, such as treatments for cancer or \ncongestive heart failure, \nOR a condition that may require hospitalizations, surgery or new treatments?","conditions_notes":"Notes","cbt_yes_no":"Have you undergone behavioral therapy for insomnia? \nBy this, I mean you worked specifically with an expert in sleep who had \nyou do things like get out of bed if you were not sleeping and/or \nlimit the time in bed. Another name is cognitive behavioral therapy or CBTi.","cbt_how_long_ago":"When did you undergo this therapy?","cbt_notes":"Notes","sleep_times_yes_no":"Do you typically fall asleep before 8pm \n_or_ \nwake up for the final time later than 11am?","sleep_times_notes":"Notes","work_night_shifts_yes_no":"Do you currently work night shifts?","number_times_per_week_work_night_shifts":"How frequently do you typically work night shifts?\n\n*Enter number of times per week. Enter 0 if less than once per week*","narcolepsy_diagnosis_yes_no_dont_know":"Have you ever been diagnosed with narcolepsy?","narcolepsy_diagnosis_notes":"Notes","antiseizure_meds_yes_no":"Are you currently taking anti-seizure medications","seizure_in_ten_years_yes_no":"Have you had a seizure within the past 10 years?","major_psychiatric_disorder_yes_no":"Have you ever been diagnosed with bipolar disorder, \npsychosis, or another major psychiatric disorder?","notes":"Additional notes","possibly_eligible_yes_no":"*Based on the scores, the participant is ineligible. \nIf you believe the participant may be eligible, select **yes** and continue\nwith the screening.*","possibly_eligible_reason_notes":"Reason"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
