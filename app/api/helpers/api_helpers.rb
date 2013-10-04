module ResponseHelper
  class Flash
    attr_accessor :success, :data, :message, :pagination, :version
    def initialize(options={})
      @message = ""
      @data = {}
      @pagination = {}
      @version = options[:version] || "v1"
      @success = nil
    end
    def to_json_with_paginate
      {:success => self.success,:message => self.message,:data => self.data, :pagination => self.pagination}
    end
    def to_json
      if self.version
        {:success => self.success,:message => self.message,:data => self.data, :version => self.version}
      else
        {:success => self.success,:message => self.message,:data => self.data}
      end
    end
    def error(msg, data={})
      self.success = false
      self.message = msg
      self.data = data
      self.to_json
    end
    def notice(msg, data={}, options={})
      self.success = true
      self.message = msg
      self.data = data
      self.pagination = options
      if self.pagination.present?
        self.to_json_with_paginate
      else
        self.to_json
      end
    end
  end
end