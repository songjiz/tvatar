module Tvatar
  class Configuration
    DEFAULT_WIDTH          = 300
    DEFAULT_HEIGHT         = DEFAULT_WIDTH
    DEFAULT_RADIUS         = 0
    DEFAULT_COLOR          = '#ffffff'
    DEFAULT_FONT_WEIGHT    = 'bold'
    DEFAULT_FONT_SIZE      = 156
    DEFAULT_LATTER_SPACING = 5
    
    attr_accessor :width, :height, :radius
    attr_accessor :color, :latter_spacing
    attr_accessor :font_size, :font_weight
    attr_reader   :font_family, :class_names, :backgrounds

    def initialize(options = {})
      @width           = options[:width]          || DEFAULT_WIDTH
      @height          = options[:height]         || DEFAULT_HEIGHT
      @radius          = options[:radius]         || DEFAULT_RADIUS
      @color           = options[:color]          || DEFAULT_COLOR
      @latter_spacing  = options[:latter_spacing] || DEFAULT_LATTER_SPACING
      @font_weight     = options[:font_weight]    || DEFAULT_FONT_WEIGHT
      @font_size       = options[:font_size]      || DEFAULT_FONT_SIZE
      self.backgrounds = options[:backgrounds]
      self.font_family = options[:font_family]
      self.class_names = options[:class_names]
    end

    def random_background
      backgrounds.sample
    end

    def font_family=(fonts)
      @font_family = Array(fonts)
    end

    def backgrounds=(bgs)
      @backgrounds = Array(bgs)
    end

    def class_names=(names)
      @class_names = Array(names)
    end
  end
end