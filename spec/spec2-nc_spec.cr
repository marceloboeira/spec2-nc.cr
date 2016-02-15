require "./spec_helper"

create_double "Example" { }

create_module_mock TerminalNotifier do
  mock self.notify(message)
end

describe Spec2::Reporters::Nc do
  let(reporter) { Spec2::Reporters::Nc.new }
  let(example) { double("Example") }

  context "with failed examples" do
    before do
      reporter.example_failed(example, Spec2::ExpectationNotMet.new("Default Error"))
    end

    it "notifies with error message" do
      message = "#{Spec2::Reporters::Nc::ERROR_ICON} Error"
      allow(TerminalNotifier).to receive(self.notify(message)).and_return(nil)

      reporter.report

      expect(TerminalNotifier).to have_received(self.notify(message))
    end
  end

  context "with succesfull examples" do
    before do
      reporter.example_succeeded(example)
    end

    it "notifies with success message" do
      message = "#{Spec2::Reporters::Nc::SUCCESS_ICON} Success"
      allow(TerminalNotifier).to receive(self.notify(message)).and_return(nil)

      reporter.report

      expect(TerminalNotifier).to have_received(self.notify(message))
    end
  end
end
