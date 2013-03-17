dmg_package "Sublime Text 2" do
  source node["sublime_text"]["url"]
  checksum node["sublime_text"]["checksum"]
end

directory node["sublime_text"]["packages_dir"] do
  recursive true
end

data_bag("sublime_packages").each do |id|
  sublime_package = data_bag_item("sublime_packages", id)

  git "#{node["sublime_text"]["packages_dir"]}/#{sublime_package["name"]}" do
    repository sublime_package["repository"]
    action :sync
  end
end

template "#{node["sublime_text"]["packages_dir"]}/User/Preferences.sublime-settings" do
  source "Preferences.sublime-settings.erb"
end
