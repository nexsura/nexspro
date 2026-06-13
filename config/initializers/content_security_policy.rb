# frozen_string_literal: true

require "securerandom"

Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self

    policy.base_uri :self
    policy.connect_src :self
    policy.font_src :self
    policy.form_action :self
    policy.img_src :self
    policy.manifest_src :self
    policy.media_src :self
    policy.object_src :none
    policy.prefetch_src :none
    policy.worker_src :self

    policy.child_src :none
    policy.frame_src :none
    policy.frame_ancestors :none

    policy.script_src :self
    policy.script_src_attr :none
    policy.script_src_elem :self

    policy.style_src :self
    policy.style_src_attr :none
    policy.style_src_elem :self

    policy.require_trusted_types_for :script
    policy.upgrade_insecure_requests if Rails.env.production?
  end

  config.content_security_policy_nonce_generator = ->(_request) { SecureRandom.base64(16) }
  config.content_security_policy_nonce_directives = %w[script-src style-src]
end
