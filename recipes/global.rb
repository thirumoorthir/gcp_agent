# log "the value of #{node['is_db']}" do
#   message lazy { node['is_db'] }
# end

yum_package 'tree' do
  action :install
end
