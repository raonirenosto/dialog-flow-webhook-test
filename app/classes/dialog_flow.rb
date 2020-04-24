module DialogFlow
  def extract_webhook params
    web_hook_params = WebHookParams.new
    web_hook_params.session = params["session"]
    web_hook_params.response_id = params["responseId"]

    query_result = QueryResult.new
    query_result.query_text = params["queryResult"]["queryText"]
    query_result.parameters = params["queryResult"]["parameters"]

    web_hook_params.query_result = query_result
    web_hook_params
  end

end
