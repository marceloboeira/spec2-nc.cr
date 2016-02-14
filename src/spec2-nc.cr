require "spec2"
require "terminal-notifier"

module Spec2
  module Reporters
    class Nc < Reporter
      ERROR_ICON = "\u26D4"
      SUCCESS_ICON = "\u2705"

      def initialize
        @errors = [] of Spec2::ExpectationNotMet
      end

      def configure_output(@output); end
      def context_started(context); end
      def context_finished(context); end
      def example_started(example); end
      def example_succeeded(example); end

      def example_failed(example, exception)
        @errors << exception
      end

      def example_errored(example, exception)
        @errors << exception
      end

      def report
        message = ""

        if failed?
          message = "#{ERROR_ICON} Error"
        else
          message = "#{SUCCESS_ICON} Success"
        end

        notify(message)
      end

      private def notify(message : String)
        TerminalNotifier.notify(message)
      end

      private def failed?
        @errors.size > 0
      end
    end
  end
end
