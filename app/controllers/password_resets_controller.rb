##
## Copyright [2013-2015] [Megam Systems]
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
## http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
class PasswordResetsController < NilavuController
  skip_before_action :require_signin, only: [:edit, :create, :update]

  def create
    Api::Accounts.new.reset(params) do |account|
      status = UserMailer.reset(account).deliver_now
      @msg = { title: 'Reset', message: 'An email was sent to #{account.email}. ', redirect: '/', disposal_id: 'forgot_password' }
    end
  end

  def edit
    @account ||= Api::Accounts.new.find_by_password_reset_key(params[:id], params[:email])
  end

  def update
    Api::Accounts.new.find_by_password_reset_key(params[:id], params[:email]) do |account|
      toast_success(root_url,'Password has been reset!')
    end if !reset_key_expired?
    redirect_to signin_path, alert: 'Password reset has expired.'
  end

  private
  def reset_key_expired?(account)
    account.password_reset_sent_at < 2.hours.ago
  end
end
