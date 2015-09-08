remote_file ::File.join(node['vim-windows']['cache_path'], 'vim74rt.zip') do
  source node['vim-windows']['vim_rt_url']
  notifies :unzip, "windows_zipfile[unzip vim runtime files]", :immediately
end

windows_zipfile "unzip vim runtime files" do
  path node['vim-windows']['install_dir']
  source ::File.join(node['vim-windows']['cache_path'], 'vim74rt.zip')
  overwrite true
  action :nothing
end

remote_file ::File.join(node['vim-windows']['cache_path'], 'gvim74.zip') do
  source node['vim-windows']['gvim_url']
  notifies :unzip, "windows_zipfile[unzip gvim]", :immediately
end

windows_zipfile "unzip gvim" do
  path node['vim-windows']['install_dir']
  source ::File.join(node['vim-windows']['cache_path'], 'gvim74.zip')
  overwrite true
  action :nothing
end

windows_batch "install vim" do
  code "install.exe -install-popup -install-openwith -create-batfiles vim gvim" 
  cwd ::File.join(node['vim-windows']['install_dir'], 'vim', 'vim74')
  creates 'C:/Windows/gvim.bat'
end
