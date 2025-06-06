# frozen_string_literal: true

require "spec_helper"

module Kitchen
  RSpec.describe Banana do
    it { is_expected.to be_versioned }

    describe "#versions" do
      it "returns instances of Kitchen::BananaVersion", :versioning do
        banana = described_class.create!
        expect(banana.versions.first).to be_a(Kitchen::BananaVersion)
      end
    end
  end
end
