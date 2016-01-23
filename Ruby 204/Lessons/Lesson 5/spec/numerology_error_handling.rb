require 'spec_helper'

describe 'Our Numerology App' do
  include SpecHelper
  
  it "displays an error message if the input is too short" do
    birthdate = '/090319'
    post("/", { birthdate: birthdate })
    expect(last_response).to match(/#{'Please enter the date as MMDDYYYY.'}/)
  end
  
  it "displays an error message if the input is non-numeric" do
    birthdate = '/12axy3jk'
    post("/", { birthdate: birthdate })
    expect(last_response).to match(/#{'Please enter the date as MMDDYYYY.'}/)
  end
  
end