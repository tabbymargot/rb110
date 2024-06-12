mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

counter = 0

loop do
  break if counter == mailing_campaign_leads.size # size == 4
  full_name = mailing_campaign_leads[counter][:name] # retrieves name value and assigns it to array full_name
  names = full_name.split # splits elements in full_name into separate names and adds to an array called names

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter] # gets current name
    names[names_counter] = name.capitalize # capitalizes current name and replaces the name in the array with this capitalized version

    names_counter += 1
  end

  capitalized_full_name = names.join(' ') # joins names back into full names
  mailing_campaign_leads[counter][:name] = capitalized_full_name # replaces the value of name: with the capitalized names

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login] # gets the days since login and assigns them to last_login
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list] # gets the boolean for if they are on a mailing list, and assigns it to subscribed_to_list

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter] # if they meet the criteria, append the hash to array usable_leads
  end

  counter += 1
end

=begin
A doesn't work because select! doesn't return a new array usable_leads

B doesn't work because usable_leads is a hash, not an array


=end