# github runs in safe mode so this code will never be run
module Jekyll
  class DevelopmentGenerator < Generator
    def generate(site)
      site.config['env'] = ENV['JEKYLL_ENV'] || calc_env(site)
      # Add other environment variables to `site.config` here...
      
      fix_url(site)
    end
    
    def calc_env(site)
      site.config['host'] == '0.0.0.0' ? 'development' : 'production'
    end
    
    def fix_url(site)
      url_key = "#{site.config['env']}_url"
      
      return unless site.config['env']
      return unless site.config[url_key]
      
      site.config['url'] = site.config[url_key]
    end
  end
end