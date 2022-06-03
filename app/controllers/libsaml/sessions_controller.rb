class Libsaml::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, on: :create
  before_action :require_current_provider

  def show
    authn_request = Saml::AuthnRequest.new(
      issuer: libsaml_session_url(params[:idp]),
      assertion_consumer_service_url: libsaml_session_url(params[:idp]),
      destination: Saml.current_provider.sso_url
    )
    session[:authn_request_id] = authn_request._id
    redirect_to Saml::Bindings::HTTPRedirect.create_url(authn_request, exclude_signature: true)
  end

  def create
    authn_response = Saml::Bindings::HTTPPost.receive_message(request, :response)
    if authn_response.success?
      render plain: "Welcome, #{authn_response.assertion.subject.name_id}!"
    else
      render plain: 'Login Failed', status: 401
    end
  end

  private

  def require_current_provider
    # NOTE: libsaml は内部的に各所で Saml.current_provider にアクセスして署名検証処理や issuer のチェックを実施する。
    Saml.current_provider = Libsaml::IdentityProvider.find_by!(identifier: params[:idp])
  end
end
