class Chef
  module RVM
    module UserEnvironmentPathHelpers

      def configure_ruby_env_paths(user_dir)
        user_profile_filename = node['rvm']['user_env']['profile_filename']
        user_profile = File.join(user_dir, user_profile_filename)
        file user_profile do
            action :touch
        end

        ruby_block "Add rvm paths to user's #{user_profile_filename}" do
          block do
            fe = Chef::Util::FileEdit.new(user_profile)

            node['rvm']['user_env']['paths'].each do |path|
              bin = File.join(user_dir, path)
              fe.insert_line_if_no_match(/#{bin}/, "export PATH=#{bin}:$PATH")
            end

            fe.write_file
          end
        end

      end

    end
  end
end