require 'active_record/migration/app_generator'
class CreateOrUpdateSleepIsiQuestionsQmow7n < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_isi_questions'
    self.fields = %i[falling_asleep staying_asleep waking_too_early satisfaction_with_pattern noticeable_to_others worried_distressed interferes_with_daily_function total_score possibly_eligible_yes_no possibly_eligible_reason_notes ineligible_assist_yes_no trust_assessment_info_yes_no help_finding_pcp_yes_no notes]
    self.table_comment = 'Dynamicmodel: Insomnia Severity Index'
    self.fields_comments = {"falling_asleep":"Difficulty falling asleep","staying_asleep":"Difficulty staying asleep","waking_too_early":"Problems waking up too early","satisfaction_with_pattern":"How SATISFIED/DISSATISFIED are you with your CURRENT sleep pattern?","noticeable_to_others":"How NOTICEABLE to others do you think your sleep problem is in terms of impairing the quality of your life?","worried_distressed":"How WORRIED/DISTRESSED are you about your current sleep problem?","interferes_with_daily_function":"To what extent do you consider your sleep problem to INTERFERE with your daily functioning (e.g. daytime fatigue, mood, ability to function at work/daily chores, concentration, memory, mood, etc.) CURRENTLY?","total_score":"**Total Score:**\n\n0–7 = No clinically significant insomnia\n\n8–14 = Subthreshold insomnia\n\n15–21 = Clinical insomnia (moderate severity)\n\n22–28 = Clinical insomnia (severe)\n\nTotal score","possibly_eligible_yes_no":"*Based on the scores, the participant is ineligible. \nIf you believe the participant may be eligible, select **yes** and continue\nwith the screening.*","possibly_eligible_reason_notes":"Reason","ineligible_assist_yes_no":"Would you be interested in\nhearing about and receiving that information?","trust_assessment_info_yes_no":"Would you like me to email you more information about these assessments?","help_finding_pcp_yes_no":"Additionally, if you would prefer only to have your sleep assessed \nor to potentially stay closer to home, you can visit \nhttp://sleepeducation.org/ and in the top left corner click on \n“Find a Sleep Facility”. That page should help you find a \nsleep center in your area where you could do a sleep study to \nlearn more about any issues you may be experiencing during sleep. \nJust so you are aware, if your insurance plan would cover this assessment, \nsometimes they will only do so if you get a referral from your \nPrimary Care Physician first. \n\nDo you need any assistance finding a PCP?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
