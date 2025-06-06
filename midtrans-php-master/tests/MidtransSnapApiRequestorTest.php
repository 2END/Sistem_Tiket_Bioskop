<?php

namespace Midtrans;

class MidtransSnapApiRequestorTest extends \PHPUnit_Framework_TestCase
{

    public function testConfigOptionsOverrideCurlOptions()
    {
        VT_Tests::$stubHttp = true;
        VT_Tests::$stubHttpResponse = '{ "status_code": "200" }';
        VT_Tests::$stubHttpStatus = array('http_code' => 201);

        Config::$curlOptions = array(
            CURLOPT_HTTPHEADER => array( "User-Agent: testing lib" ),
            CURLOPT_PROXY => "http://proxy.com"
        );

        $resp = SnapApiRequestor::post("http://example.com", "", "");

        $fields = VT_Tests::lastReqOptions();
        $this->assertTrue(in_array("User-Agent: testing lib", $fields["HTTPHEADER"]));
        $this->assertTrue(in_array('Content-Type: application/json', $fields["HTTPHEADER"]));

        $this->assertEquals($fields["PROXY"], "http://proxy.com");
    }

    public function tearDown()
    {
        VT_Tests::reset();
        Config::$curlOptions = array();
    }

}
