<?php

class DemoTest extends PHPUnit_Framework_TestCase {
	public function setUp() {
		$this->Demo = new CodeRetreat\Demo();
	}
	public function tearDown() {
		unset($this->Demo);
	}

	public function testDemoMethod() {
		// Arrange

		// Act

		// Assert
		$this->assertEquals('demo string', $this->Demo->demoMethod());
	}
}