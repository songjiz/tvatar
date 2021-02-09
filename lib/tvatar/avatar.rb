module Tvatar
  class Avatar
    attr_accessor :text
    attr_accessor :background, :color
    attr_accessor :width, :height
    attr_accessor :font_size, :font_weight, :font_family
    attr_accessor :class_names, :latter_spacing
    attr_reader   :font_family, :class_names

    def initialize(text:, **options)
      @text            = text
      @background      = options[:background]     || default_cfg.random_background
      @color           = options[:color]          || default_cfg.color
      @width           = options[:width]          || default_cfg.width
      @height          = options[:height]         || default_cfg.height
      @font_size       = options[:font_size]      || default_cfg.font_size
      @font_weight     = options[:font_weight]    || default_cfg.font_weight
      @radius          = options[:radius]         || default_cfg.radius
      @letter_spacing  = options[:letter_spacing] || default_cfg.latter_spacing
      self.font_family = options[:font_family]    || default_cfg.font_family
      self.class_names = options[:class_names]    || default_cfg.class_names
    end

    def font_family=(value)
      @font_family = Array(value).map(&:to_s).flat_map { |value| value.split(/,\s?/) }.join(', ')
    end

    def class_names=(value)
      @class_names = Array(value).map(&:to_s).flat_map { |value| value.split(/\s+/) }.join(' ')
    end

    def to_s
      <<-SVG.gsub(/[[:space:]]+/, " ").strip
      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
           version="1.1" viewBox="0 0 #{@width} #{@height}" class="#{@class_names}">
        <g>
          <rect width="100%" height="100%" rx="#{@radius}" fill="#{@background}"></rect>
          <text xmlns="http://www.w3.org/2000/svg"
                x="50%" y="50%" dy="0.35em" text-anchor="middle" fill="#{@color}"
                font-family="#{@font_family}" font-size="#{@font_size}" font-weight="#{@font_weight}"
                letter-spacing="#{@letter_spacing}">#{@text}</text>
        </g>
      </svg>
      SVG
    end
    alias to_svg to_s

    # Renderable:
    #
    #   ```
    #   avatar = Tvatar::Avatar.new(name: 'NB')
    #   ApplicationController.render(avatar)
    #   ```
    def render_in(_view_context)
      to_svg
    end

    def format
      :svg
    end

    private
      def default_cfg
        Tvatar.configuration
      end
  end
end