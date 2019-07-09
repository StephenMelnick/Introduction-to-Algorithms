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
    @image.each_with_index do |blur, index|
      puts blur.join[1]
      puts "index - #{index}"
      end
    end
  end

image = Image.new
image.output_image
