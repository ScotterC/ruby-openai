# OpenAI.configure do |config|
#   config.uri_base = "https://oai.hconeai.com/"
#   config.access_token = ENV.fetch("OPENAI_ACCESS_TOKEN")
#   config.extra_headers = {
#     "Helicone-Auth" => "Bearer #{ENV.fetch("HELICONE_API_KEY")}",
#     "Helicone-Cache-Enabled" => "true"
#   }
# end

# RSpec.describe OpenAI::Client do
#   describe "#embeddings" do
#     let(:input) { "The food was delicious and  -- asdfa..." }
#     let(:client) { OpenAI::Client.new }
#     let(:parameters) do
#       {
#         model: model,
#         input: input
#       }
#     end
#     let(:response) do
#       WebMock.allow_net_connect!
#       VCR.turned_off do
#         response = client.embeddings(parameters: parameters)
#         response
#       end
#     end

#     context "with model: text-embedding-ada-002" do
#       let(:model) { "text-embedding-ada-002" }

#       10.times do
#         it "succeeds" do
#           expect(response.dig("data", 0, "object")).to eq("embedding")
#         end
#       end
#     end
#   end
# end
