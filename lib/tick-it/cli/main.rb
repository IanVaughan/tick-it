module TickIt
  module CLI

    class Main < Thor
      # map "-L" => :list

      desc "setup CONFIG", "uses config file as the settings to access TickSpot"
      def setup(file)
        # TickIt::api.setup file
        conf = YAML.load(file)
        TickIt::api.new(conf.company, conf.user, get_password)
      end

      desc "update offline store off data"
      def update
        TickIt::api.update get_password
      end

      desc "clients", ''
      def clients
        TickIt::api.clients
      end

      desc "projects [SEARCH]", "list all of the available projects, limited by SEARCH"
      def projects(search="")
        TickIt::api.projects search
      end

      desc "project PROJECT NAME/ID", "make PROJECT the active selected project"
      def project(name)
        # user_alias = options[:alias]
        TickIt::api.project name
      end

      desc "add [TIME] [COMMENTS]", "adds TIME to the selected/default project"
      long_desc <<-LONGDESC
        `tick add TIME` is implicatly positive, ie 5 and +5 are the same
        but can also be negitivte to detuct hours from a project, ie "-5"
        TIME supports the standard TickSpot inputs, so
        can be a decimal fraction of hour, ie 5.8
        or an amount of time, '5:20'

        > $ tick add 5 "hard work"
      LONGDESC
      def add(time, comments='')
        msg = "Booking #{time} to project"
        comments == '' ? msg += ", with no comments" : msg += ", with comments : #{comments}"
        puts msg
      end

      # maybe use config like git

      desc 'aliases', 'list current aliases'
      def aliases
      end

      desc 'alias', 'create an alias'
      def alias
      end

      private
        def get_password
          get_input("Enter password: ", '*')
        end

        def get_input prompt, echo = true
          ask(prompt) {|q| q.echo = echo}
        end

    end
  end
end
