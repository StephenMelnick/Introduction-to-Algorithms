class Image
  def initialize(imageblur)
    @imageblur = imageblur
  end
    
  def output_image
      @imageblur.each do |blur|
      puts blur.join
      end
  end

    def location
      transform = []
        @imageblur.each_with_index do |element, y|
          element.each_with_index do |number, x|
          transform << [y, x] if number == 1
          end
        end
    transform.each do |y, x|
      @imageblur[y-1][x]=1 if valuecoords(y-1,x) == 0
      @imageblur[y][x-1]=1 if valuecoords(y,x-1) == 0
      @imageblur[y+1][x]=1 if valuecoords(y+1,x) == 0
      @imageblur[y][x+1]=1 if valuecoords(y,x+1) == 0
      end                                         
    end

    def valuecoords(y, x)  
      row = @imageblur[y]
      return nil if row.nil?
      row[x]
    end
end    
  
  image = Image.new([
    [0, 0, 0, 1],
    [1, 0, 0, 0],
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 1],
  ])
  image.location
  image.output_image