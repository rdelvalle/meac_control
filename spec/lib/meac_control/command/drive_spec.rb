require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'spec_helper'))
require 'meac_control/command/drive'

describe MEACControl::Command::Drive do
  before(:each) do
    @cmd = MEACControl::Command::Drive.new
  end

  it_should_behave_like "a class that includes MEACControl::Command::Generic"

  it "has set the command to 'Drive'" do
    @cmd.command.should == 'Drive'
  end

  describe "#on" do
    it "sets the value to 'ON'" do
      @cmd.on
      @cmd.value.should == 'ON'
    end
  end

  describe "#off" do
    it "sets the value to 'OFF'" do
      @cmd.off
      @cmd.value.should == 'OFF'
    end
  end
end
