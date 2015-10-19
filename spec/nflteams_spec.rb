require 'spec_helper'

describe "NFL Teams" do

  before :each do
    file = open("spec/schema/nfl-teams.json")
    @json = file.read
  end

  it 'Buffalo Bills' do
    code = '"code": "BUF"'
    fullName = '"fullName": "Buffalo Bills"'
    shortName = '"shortName": "Buffalo"'

    expect(@json).to include(code)
    expect(@json).to include(fullName)
    expect(@json).to include(shortName)
  end

  it 'JSON Objects' do
    expect(@json).to_json have_json_path("codes")
    expect(@json).to_json have_json_path("fullName")
    expect(@json).to_json have_json_path("shortName")
  end

end
