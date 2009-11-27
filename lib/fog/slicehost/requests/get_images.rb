unless Fog.mocking?

  module Fog
    class Slicehost

      # Get list of images
      #
      # ==== Returns
      # * response<~Excon::Response>:
      #   * body<~Array>:
      #     * 'id'<~Integer> - Id of the image
      #     * 'name'<~String> - Name of the image
      def get_images
        request(
          :expects  => 200,
          :method   => 'GET',
          :parser   => Fog::Parsers::Slicehost::GetImages.new,
          :path     => 'images.xml'
        )
      end

    end
  end

else

  module Fog
    class Slicehost

      def get_images
      end

    end
  end

end
