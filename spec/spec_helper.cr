require "spec2"
require "../src/spec2-nc"

include Spec2::GlobalDSL

Spec2.configure_reporter(Spec2::Reporters::Nc)
