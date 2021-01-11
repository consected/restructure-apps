require 'active_record/migration/app_generator'
class CreateOrUpdateSleepPs2Phq8QuestionsQmq88t < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'study_info'
    self.table_name = 'sleep_ps2_phq8_questions'
    self.fields = %i[little_interest feeling_down initial_score trouble_sleeping feeling_tired poor_appetite feeling_bad trouble_concentrating acting_slowly_or_restlessly total_score]
    self.table_comment = 'Dynamicmodel: Phq 8 Questions'
    self.fields_comments = {"little_interest":"Little interest or pleasure in doing things","feeling_down":"Feeling down, depressed or hopeless","trouble_sleeping":"Trouble falling or staying asleep, or sleeping too much","feeling_tired":"Feeling tired or having little energy","poor_appetite":"Poor appetite or overeating","feeling_bad":"Feeling bad about yourself, or that you are a failure, or have let yourself or your family down","trouble_concentrating":"Trouble concentrating on things, such as reading the newspaper or watching television","acting_slowly_or_restlessly":"Moving or speaking so slowly that other people could have noticed. Or the opposite –  being so fidgety or restless that you have been moving around a lot more than usual"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
