class Chef
  module RVM
    module UserEnvironmentPathHelpers

      def configure_ruby_env_paths(user_dir)
        user_profile = File.join(user_dir, node['rvm']['user_env']['profile_filename'])
        file user_profile do
            action :touch
        end

        node['rvm']['user_env']['paths'].each do |path|
          bin = File.join(user_dir, path)
          fe = Chef::Util::FileEdit.new(user_profile)
          fe.insert_line_if_no_match(/#{bin}/, "export PATH=#{bin}:$PATH")
        end
        fe.write_file
      end

    end
  end
end