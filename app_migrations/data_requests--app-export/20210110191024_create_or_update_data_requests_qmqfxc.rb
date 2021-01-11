require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestsQmqfxc < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_requests'
    self.fields = %i[status project_title select_purpose other_purpose research_question_notes restructure_analyst_yes_no full_name title institution other_institution others_handling_data pm_contact other_pm_contact data_start_date data_end_date restructure_server_yes_no restructure_server_tools_notes off_restructure_server_reason_notes data_use_agreement_status data_use_agreement_notes terms_of_use_yes_no created_by_user_id]
    self.table_comment = 'Dynamicmodel: Data Request'
    self.fields_comments = {"project_title":"Project title","select_purpose":"Purpose of this data request","other_purpose":"*other purpose*: please explain","research_question_notes":"Research question and hypothesis for the proposed analysis\n\n*To include supporting documents or files, complete this form, then\nselect the Supporting Files section at the end of the form*","restructure_analyst_yes_no":"Are you an internal ReStructure analyst?","full_name":"Your full name","title":"Your title","institution":"Your primary affiliation","others_handling_data":"Name and title of others who will be handling ReStructure data (one per line)","pm_contact":"ReStructure Project Manager contact","other_pm_contact":"Project Manager name","restructure_server_yes_no":"Will analysis be performed within the *ReStructure secure environment*?","restructure_server_tools_notes":"Any other software applications or tools that \nare required for analysis of this data set within\nthe *ReStructure secure environment*","off_restructure_server_reason_notes":"Explain why analysis is to be performed outside of the *ReStructure secure environment*","data_start_date":"Planned analysis start date","data_end_date":"Planned analysis end date","data_use_agreement_status":"Do you have a Data Use Agreement or other sort of contractual agreement with ReStructure that allows sharing of data?","data_use_agreement_notes":"Additional information about Data Use Agreement","terms_of_use_yes_no":"I attest that I have read, understood, and accepted the terms of use stated in the data use agreement, or other form of contractual agreement, with the Sample Study at Sample University."}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
