# To learn more about Custom Resources, see https://docs.chef.io/custom_resources.html

resource_name :pip

property :app_name, String, name_property: true
property :source_path, String

action :run do
  unless new_resource.source_path.empty?
    execute "pip3 install -e #{new_resource.source_path}"
  else
    execute "pip3 install #{new_resource.app_name}"
  end
end
