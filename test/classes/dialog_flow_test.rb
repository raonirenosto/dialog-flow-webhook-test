require 'test_helper'

class DialogFlowTest < ActionDispatch::IntegrationTest

  include DialogFlow

  test "should extract webhook params" do
    web_hook_params = extract_webhook params

    response_id = "22e72a77-b4cd-4aa0-8632-9e9e43254766-a14fa99c"
    session = "projects/evolua-bot-test-svqldv/agent/sessions/ed3bc428-4221-b202-c2d1-7b94eec8bf08"
    query_text = "Sistólico é 120"

    assert_equal response_id, web_hook_params.response_id
    assert_equal session, web_hook_params.session
    assert_equal query_text, web_hook_params.query_result.query_text
    assert_equal 1, web_hook_params.query_result.parameters.count
  end

  def params
  {
      "responseId" => "22e72a77-b4cd-4aa0-8632-9e9e43254766-a14fa99c",
      "queryResult" => {
          "queryText" => "Sistólico é 120", "parameters" => {
              "sistolico" => "sistólico"
          }, "allRequiredParamsPresent" => true, "fulfillmentText" => "sistólico foi criado", "fulfillmentMessages" => [{
              "text" => {
                  "text" => ["sistólico foi criado"]
              }
          }], "outputContexts" => [{
              "name" => "projects/evolua-bot-test-svqldv/agent/sessions/ed3bc428-4221-b202-c2d1-7b94eec8bf08/contexts/__system_counters__",
              "lifespanCount" => 1,
              "parameters" => {
                  "no-input" => 0.0, "no-match" => 0.0, "sistolico" => "sistólico", "sistolico.original" => "Sistólico"
              }
          }], "intent" => {
              "name" => "projects/evolua-bot-test-svqldv/agent/intents/21533d28-25b3-41f2-a266-86b66d3de4be", "displayName" => "Sistólico", "endInteraction" => true
          }, "intentDetectionConfidence" => 0.5959262, "languageCode" => "pt-br"
      }, "originalDetectIntentRequest" => {
          "payload" => {}
      },
      "session" => "projects/evolua-bot-test-svqldv/agent/sessions/ed3bc428-4221-b202-c2d1-7b94eec8bf08",
      "pressure" => {}
  }
  end
end
