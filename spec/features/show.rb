require 'rails_helper'

RSpec.describe 'When a user visits a machine show page', type: :feature do
  it 'I see the name of all snacks associated with that machine' do
    owner = Owner.create(name: "Sam's Snacks")
    dons  = owner.machines.create(location: "Don's Mixed Drinks")
    cheetos = dons.snacks.create(name: "Cheetos", price: 1.50)
    lays = dons.snacks.create(name: "Lays", price: 1.00)
    save_and_open_path

    expect(page).to have_content("Cheetos")
    expect(page).to have_content("Lays")
    expect(page).to have_content("Average Price: 1.25")
  end
end
