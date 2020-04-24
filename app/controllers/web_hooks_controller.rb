class WebHooksController < ApplicationController
  include DialogFlow

  def create
    webhook_params = extract_webhook params

    puts "Session: #{webhook_params.session}"
    puts "Response id: #{webhook_params.response_id}"
    puts "Query Result - Query Text: #{webhook_params.query_result.query_text}"
    puts "Query Result - Params: \n"
    webhook_params.query_result.parameters.each do |param|
      puts param
    end

    head :ok
  end
end
