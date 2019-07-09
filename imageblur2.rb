class Image
  def initialize
    @image = ([
    [0, 0, 0, 0],
    [0, 0, 1, 0],
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 0],
  ])

@image[0][2] = 1
@image[1][1] = 1    
@image[1][3] = 1 
@image[2][2] = 1
@image[2][1] = 1
@image[3][0] = 1
@image[3][2] = 1
@image[4][1] = 1

    end


    def output_image
      @image.each do |blur|
        puts blur.join
        
      end
    end
  end

  image = Image.new
  image.output_image
