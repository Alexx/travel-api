require 'rails_helper'
describe "get all destinations route", :type => :request do
  FactoryBot.find_definitions
  let!(:destinations) { FactoryBot.create_list(:destination, 20)}

  before {get '/destinations'}

  it "returns all destinations" do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it "is 200 ok!!!" do
    expect(response).to have_http_status(:success)
  end

end
