class ConsulUsageController < ApplicationController
  def get
     raw_text = IO.read("#{Rails.root}/config/consul_test.yml")
     erb_text = ERB.new(raw_text).result
     yaml_text = YAML.load(erb_text)
    json_response(yaml_text['test_value'])
  end
end
