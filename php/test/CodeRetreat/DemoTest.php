<?php
use PHPUnit\Framework\TestCase;

class DemoTest extends TestCase
{
	public function setUp(): void
	{
		$this->Demo = new CodeRetreat\Demo();
	}

	public function tearDown(): void
	{
		unset($this->Demo);
	}

	public function testDemoMethod()
	{
		// Arrange

		// Act

		// Assert
		$this->assertEquals('demo response', $this->Demo->demoMethod());
	}
}
