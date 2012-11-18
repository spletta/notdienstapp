  require 'spec_helper'

  describe NdtAppV6::Application, 'configuration' do
    let(:config) { described_class.config }

    [:password, :password_confirmation].each do |param|
      it "filters #{param.inspect} from logs" do
        config.filter_parameters.should include(param)
      end
    end
  end