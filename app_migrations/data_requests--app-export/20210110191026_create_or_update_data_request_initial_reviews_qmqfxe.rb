require 'active_record/migration/app_generator'
class CreateOrUpdateDataRequestInitialReviewsQmqfxe < ActiveRecord::Migration[5.2]
  include ActiveRecord::Migration::AppGenerator

  def change
    self.schema = 'data_requests'
    self.table_name = 'data_request_initial_reviews'
    self.fields = %i[restructure_analyst_yes_no restructure_server_yes_no tag_select_data_classifications message_notes next_step review_approved_yes_no created_by_user_id]
    self.table_comment = 'Dynamicmodel: Initial Review'
    self.fields_comments = {"restructure_analyst_yes_no":"Is the requester an ReStructure analyst?","restructure_server_yes_no":"Will the analysis be run on the ReStructure server?","tag_select_data_classifications":"Which classes of data have been requested?","next_step":"Is the review complete?","review_approved_yes_no":"**Approve the request?**\n\n- Select **no** to reject the data request and inform the requester.\n- Select **yes** if the request is *approved* and to send on for PI notifications and reviews.","message_notes":"Reviewer's notes"}
    self.no_master_association = false


    create_or_update_dynamic_model_tables
    create_dynamic_model_trigger
  end
end
