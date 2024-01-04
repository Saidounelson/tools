# This file is managed by gitlab-ctl. Manual changes will be
# erased! To change the contents below, edit /etc/gitlab/gitlab.rb
# and run `sudo gitlab-ctl reconfigure`.

if Rails.env.production?
  Gitlab::Application.config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    authentication: :login,
    address: "smtp.office365.com",
    port: 587,
    user_name: "",
    password: "",
    domain: "smtp.gmail.com",
    enable_starttls_auto: true,
    tls: false,
    
    openssl_verify_mode: "peer",
    
    ca_file: "/opt/gitlab/embedded/ssl/certs/cacert.pem",
  }
end
