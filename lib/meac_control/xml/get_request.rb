require 'meac_control/xml/abstract_request'

module MEACControl
  module XML
    class GetRequest < AbstractRequest
      def to_xml
        xml_template('getRequest')
      end
    end
  end
end
