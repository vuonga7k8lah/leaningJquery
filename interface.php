<?php

interface appleFactory
{
	public function createIphone();

	public function createMacBook();

	public function createSmartWatch();
}

interface iphone
{
	public function iphone12();

	public function iphone12ProMax();
}

interface smartWatch
{
	public function smartWatch6();

	public function smartWatch6ProMax();
}

interface macBook
{
	public function macBook6();

	public function macBook6Pro();
}


//Khởi Tạo các class implement
class Iphone2020 implements iphone
{
	public function iphone12()
	{
		return 'Đây Là phiên bản iphone 12 năm 2020';
	}

	public function iphone12ProMax()
	{
		return 'Đây Là phiên bản iphone 12 ProMax năm 2020';
	}
}

class Iphone2019 implements iphone
{
	public function iphone12()
	{
		return 'Đây Là phiên bản iphone 12 năm 2019';
	}

	public function iphone12ProMax()
	{
		return 'Đây Là phiên bản iphone 12 ProMax năm 2019';
	}
}

class smartWatch2020 implements smartWatch
{
	public function smartWatch6()
	{
		return 'Đây Là phiên bản smartWatch 6 năm 2020';
	}

	public function smartWatch6ProMax()
	{
		return 'Đây Là phiên bản smartWatch 6 ProMax năm 2020';
	}
}

class smartWatch2019 implements smartWatch
{
	public function smartWatch6()
	{
		return 'Đây Là phiên bản smartWatch 6 năm 2019';
	}

	public function smartWatch6ProMax()
	{
		return 'Đây Là phiên bản smartWatch 6 ProMax năm 2019';
	}
}

class macBook2020 implements macBook
{
	public function macBook6()
	{
		return "Đây là phiên bản macBook 6 năm 2020 ";
	}

	public function macBook6Pro()
	{
		return "Đây là phiên bản macBook 6 pro năm 2020 ";
	}
}

class macBook2019 implements macBook
{
	public function macBook6()
	{
		return "Đây là phiên bản macBook 6 năm 2019 ";
	}

	public function macBook6Pro()
	{
		return "Đây là phiên bản macBook 6 pro năm 2019 ";
	}
}

class Apple2020Factory implements appleFactory
{
	public function createIphone()
	{
		return (new Iphone2020());
	}

	public function createMacBook()
	{
		return (new macBook2020());
	}

	public function createSmartWatch()
	{
		return (new smartWatch2020());
	}
}

;

class Apple2019Factory implements appleFactory
{
	public function createMacBook()
	{
		return (new macBook2019());
	}

	public function createIphone()
	{
		return (new Iphone2019());
	}

	public function createSmartWatch()
	{
		return (new smartWatch2019());
	}

}

;
//cấu trúc nhà máy


function clientCode(appleFactory $factory)
{
	$iphone = $factory->createIphone();
	$smartWatch = $factory->createSmartWatch();
	$macBook = $factory->createMacBook();
	echo $iphone->iphone12() . "<br>";
	echo $iphone->iphone12ProMax() . "<br>";
	echo $smartWatch->smartWatch6() . "<br>";
	echo $smartWatch->smartWatch6ProMax() . "<br>";
	echo $macBook->macBook6() . "<br>";
	echo $macBook->macBook6Pro() . "<br>";
}

echo 'Đây Là Sản Phẩm Năm 2020' . "<br>";
clientCode(new Apple2020Factory());
echo "<br>";
echo 'Đây Là Sản Phẩm Năm 2019' . "<br>";
clientCode(new Apple2019Factory());

?>
<a href=""></a>
