require "spec2"

module Spec2
  module Reporters
    class Nc < Reporter
      def initialize; end
      def configure_output(@output); end
      def context_started(context); end
      def context_finished(context); end
      def example_started(example); end
      def example_succeeded(example); end
      def example_failed(example, exception); end
      def example_errored(example, exception); end
      def report; end
    end
  end
end
