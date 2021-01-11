require 'active_record/migration/app_generator'
class CreateOrUpdateSleepInexChecklistsQmq9h4 < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_inex_checklists'
    self.fields = %i[fixed_checklist_type reliable_internet_yes_no conditions_yes_no cbt_yes_no cbt_how_long_ago sleep_times_yes_no work_night_shifts_yes_no number_times_per_week_work_night_shifts narcolepsy_diagnosis_yes_no_dont_know antiseizure_meds_yes_no seizure_in_ten_years_yes_no major_psychiatric_disorder_yes_no isi_total_score sa_diagnosed_yes_no sa_use_treatment_yes_no sa_severity ese_total_score number_hours_sleep audit_c_total_score alcohol_frequency number_days_negative_feeling_d2 number_days_drug_usage_d2 phq8_initial_score phq8_total_score consent_to_pass_info_to_partner_yes_no select_subject_eligibility]
    self.table_comment = 'Dynamicmodel: Inclusion Exclusion Checklist'
    self.fields_comments = {"reliable_internet_yes_no":"Has reliable mobile device and Internet","conditions_yes_no":"Has any condition that will prevent them from participating\nin this study over the next 3-6 months,\nOR a condition that may require hospitalizations, surgery or new treatments?","cbt_yes_no":"Has participated in CBTi","cbt_how_long_ago":"Participated in CBTi how long ago","sleep_times_yes_no":"Typically falls asleep before 8pm\n_or_\nwakes up for the final time later than 11am?","work_night_shifts_yes_no":"Works night shifts","number_times_per_week_work_night_shifts":"Typical night shifts per week","narcolepsy_diagnosis_yes_no_dont_know":"Has been diagnosed with narcolepsy","antiseizure_meds_yes_no":"Currently taking anti-seizure medications","seizure_in_ten_years_yes_no":"Has had a seizure within the past 10 years","major_psychiatric_disorder_yes_no":"Has ever been diagnosed with bipolar disorder,\npsychosis, or another major psychiatric disorder","isi_total_score":"Insomnia Severity Index total score","sa_diagnosed_yes_no":"Has been diagnosed with sleep apnea by a doctor","sa_use_treatment_yes_no":"Currently uses treatment","sa_severity":"Diagnosis severity","ese_total_score":"Epworth Sleepiness Scale total score","number_hours_sleep":"Hours of sleep on a typical night","audit_c_total_score":"AUDIT-C total score","alcohol_frequency":"Typically has a drink containing alcohol","number_days_negative_feeling_d2":"Days in the past 12 months has felt bad or guilty about his drug use","number_days_drug_usage_d2":"Days in the past 3 months has used drugs (excluding marijuana or CBD, and drugs prescribed by a clinician)","phq8_initial_score":"PHQ-8 score to questions:\n\n  * Little interest or pleasure in doing things\n  * Feeling down, depressed or hopeless","phq8_total_score":"PHQ-8 total score","consent_to_pass_info_to_partner_yes_no":"Consent to pass information to Partner","select_subject_eligibility":"**Subject's eligibility for the study**"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
