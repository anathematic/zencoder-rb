module Zencoder
  class Output < Base
    
    def self.details(output_id, options={})
      params = {:api_key => options.delete(:api_key) || api_key}
      HTTP.get("#{options[:base_url] || base_url}/outputs/#{output_id}", merge_params(options, params))
    end
    
    def self.progress(output_id, options={})
      params = {:api_key => options.delete(:api_key) || api_key}
      HTTP.get("#{options[:base_url] || base_url}/outputs/#{output_id}/progress", merge_params(options, params))
    end

  end
end
