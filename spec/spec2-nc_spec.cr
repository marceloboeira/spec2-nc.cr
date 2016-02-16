require "./spec_helper"

create_double "Example" { }

describe Spec2::Reporters::Nc do
  let(reporter) { Spec2::Reporters::Nc.new }
  let(example) { double("Example") }

  context "with failed examples" do
    before do
      reporter.example_failed(example, Spec2::ExpectationNotMet.new("Default Error"))
    end

    it "notifies with error message" do
      reporter.report
    end
  end

  context "with succesfull examples" do
    before do
      reporter.example_succeeded(example)
    end

    it "notifies with success message" do
      reporter.report
    end
  end
end
