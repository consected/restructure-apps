require 'active_record/migration/app_generator'
class CreateOrUpdateSleepEseQuestionsQmq9hh < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'sleep'
    self.table_name = 'sleep_ese_questions'
    self.fields = %i[sitting_and_reading watching_tv public_place car_passenger afternoon_rest sitting_and_talking after_lunch stopped_in_traffic total_score number_hours_sleep possibly_eligible_yes_no possibly_eligible_reason_notes ineligible_resource_yes_no trust_assessment_info_yes_no help_finding_pcp_yes_no notes]
    self.table_comment = 'Dynamicmodel: Sleep Epworth Sleepiness Scale'
    self.fields_comments = {"sitting_and_reading":"Sitting and reading","watching_tv":"Watching TV","public_place":"Sitting, inactive in a public place (e.g. a theatre or a meeting)","car_passenger":"As a passenger in a car for an hour without a break","afternoon_rest":"Lying down to rest in the afternoon when circumstances permit","sitting_and_talking":"Sitting and talking to someone","after_lunch":"Sitting quietly after a lunch without alcohol","stopped_in_traffic":"In a car, while stopped for a few minutes in the traffic","total_score":"Total Score","number_hours_sleep":"How many hours do you sleep on a typical night?","possibly_eligible_yes_no":"*Based on the scores, the participant is ineligible. \nIf you believe the participant may be eligible, select **yes** and continue\nwith the screening.*","possibly_eligible_reason_notes":"Reason","ineligible_resource_yes_no":"Are you interested in a resource where you could find a sleep center \nnear you to undergo an assessment?","trust_assessment_info_yes_no":"Would you like me to email you more information about these assessments?","help_finding_pcp_yes_no":"Additionally, if you would prefer only to have your sleep assessed or to \npotentially stay closer to home, you can visit \nhttp://sleepeducation.org/ and in the top left corner click on \n“Find a Sleep Facility”.  That page should help you find a sleep \ncenter in your area where you could do a sleep study to learn more \nabout any issues you may be experiencing during sleep.  \nJust so you are aware, if your insurance plan would cover this assessment, \nsometimes they will only do so if you get a referral from your \nPrimary Care Physician first.  Do you need any assistance finding a PCP?"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
