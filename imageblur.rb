class Image
  def initialize
@image = ([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

  end


  def output_image
    @image.each do |blur|
      puts blur.join      
      end
    end
  end

image = Image.new
image.output_image
