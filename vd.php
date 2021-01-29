<?php

interface car
{
	public function bonBanh();
}

interface Tank
{
	public function banhXich();
}

interface motorBike
{
	public function haiBanh();
}

interface optionCar
{
	public function createCar();
}

class Cars implements car
{
	public function bonBanh()
	{
		return 'Xem Nay Co 4 banh nhe';
	}
}

class Tanks implements Tank
{
	public function banhXich()
	{
		return 'Xe chay bang Này Chạy bằng xích nhé';
	}

	public function ban()
	{
		return 'xe nay có thể bắn nữa nhé';
	}
}

class motorBikes implements motorBike
{
	public function haiBanh()
	{
		return 'Chi co hai banh thoi hazzz';
	}
}

class orderCar implements optionCar
{
	public function createCar()
	{
		return (new Cars());
	}
}
class orderTank implements optionCar
{
	public function createCar()
	{
		return (new Tanks());
	}
}
class orderMotorbike implements optionCar
{
	public function createCar()
	{
		return (new motorBikes());
	}
}
function user2020(optionCar $car){
	$x=$car->createCar();
	echo $x-> banhXich().'<br>';
	echo $x-> ban();
};


user2020(new orderTank);