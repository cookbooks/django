#
# Cookbook Name:: django
# Definition:: django_app
#
# Copyright 2009, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

define :django_app, :path => nil, :settings_module => nil, 
  :canonical_hostname => nil, :template => "django/django.conf.erb", 
  :python_path_extra => "", :owner => "root", :group => root do
  
  application_name = params[:name]
  include_recipe "django"
  include_recipe "apache2::mod_rewrite"
  include_recipe "apache2::mod_deflate"
  include_recipe "apache2::mod_headers"
  
  
  
end