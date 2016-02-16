require "spec2"
require "mocks"
require "spec2-mocks"
require "../src/spec2-nc"

include Spec2::GlobalDSL

Spec2.configure_reporter(Spec2::Reporters::Nc)
