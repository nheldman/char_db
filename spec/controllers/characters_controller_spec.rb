require 'spec_helper'

describe CharactersController do 
  render_views

  before(:each) do
    @character = Factory(:character)
  end

  it "should create a new character with valid attributes" do
    @character.save.should be_true
  end

  it "should require a name" do
    no_name_character = Character.new(@character)
    no_name_character.name = nil
    no_name_character.should_not be_valid
  end

  it "should require energy projection between 1 and 7" do
    c = Character.new(@character)
    c.energy_projection = 8
    c.should_not be_valid
  end
end
