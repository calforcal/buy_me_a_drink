require 'rails_helper'

RSpec.describe 'Welcome Page', type: :feature do
  it 'displays a welcome page' do
    visit root_path
    expect(current_path).to eq(root_path)
  end
end