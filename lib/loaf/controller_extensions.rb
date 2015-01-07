# encoding: utf-8

module Loaf
  module ControllerExtensions
    # Module injection
    #
    # @api private
    def self.included(base)
      base.extend ClassMethods
      base.send :include, InstanceMethods
      base.send :helper_method, :_breadcrumbs
    end

    module ClassMethods
      # @param [String]
      #
      # @api public
      def breadcrumb(name, url, options = {})
        before_filter(options) do |instance|
          # instance.send(:add_breadcrumb, _normalize_name(name), url)
          instance.send(:breadcrumb, name, url, options)
        end
      end
      alias_method :add_breadcrumb, :breadcrumb

      private

      def _normalize_name(name=nil)
        case name
        when NilClass
        when Proc
          name.call
        when Symbol
          name.to_s
        else
          name
        end
      end
    end # ClassMethods

    module InstanceMethods
      # Add collection of nested breadcrumbs.
      # * <tt>collection</tt> - required collection of object for iteration
      # * <tt>field</tt> - required object attribute name
      #
      def add_breadcrumbs(collection, field, options = {})
        namespace = nil
        item_set = if _check_if_nested collection
           items = collection.pop
           namespace = collection
           items
        else
          collection
        end
        item_set.each do |item|
          add_breadcrumb item.send(field.to_sym), [ namespace, item ].flatten.compact
        end
      end

      # Add breadcrumb
      #
      # @param [String] name
      #
      # @param [Object] url
      #
      # @api public
      def breadcrumb(name, url, options = {})
        _breadcrumbs << Loaf::Crumb.new(name, url, options)
      end
      alias_method :add_breadcrumb, :breadcrumb

      # Collection of breadcrumbs
      #
      # @api private
      def _breadcrumbs
        @_breadcrumbs ||= []
      end

      # Remove all current breadcrumbs
      #
      # @api public
      def clear_breadcrumbs
        _breadcrumbs.clear
      end

      private

      def _check_if_nested(collection)
        collection.last.is_a? Array
      end
    end # InstanceMethods
  end # ControllerExtensions
end # Loaf
