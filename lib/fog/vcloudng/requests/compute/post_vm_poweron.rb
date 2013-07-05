module Fog
  module Compute
    class Vcloudng
      class Real
                
        def post_vm_poweron(vm_id)  
          
          request(
            :expects  => 202,                
            :headers => { 'Accept' => 'application/*+xml;version=1.5' },
            :method   => 'POST',
            :parser => Fog::ToHashDocument.new,
            :path     => "vApp/#{vm_id}/power/action/powerOn"
          )
        end
      end
    end
  end
end
