require 'test_helper'

class ReceiveWeebhookTest < ActionDispatch::IntegrationTest
  test "the truth" do
    post "/web_hooks", params: params, as: :json

    assert_response :ok
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
