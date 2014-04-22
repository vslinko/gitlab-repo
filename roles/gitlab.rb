name 'gitlab'

run_list 'recipe[apt]',
         'recipe[ntp]',
         'recipe[fail2ban]',
         'recipe[git]',
         'recipe[zsh]',
         'recipe[vim]',
         'recipe[vslinko]',
         'recipe[gitlab]'

override_attributes(
  :gitlab => {
    :host => 'gitlab.vslinko.com',
    :email_from => 'gitlab@vslinko.com',
    :support_email => 'me@vslinko.com',
    :smtp => {
      :enabled => true,
      :address => 'smtp.yandex.ru',
      :port => 587,
      :username => 'gitlab@vslinko.com',
      :password => 'cQjUCd8mg2WYgy',
      :domain => 'vslinko.com',
      :authentication => 'plain',
      :enable_starttls_auto => true
    }
  }
)
