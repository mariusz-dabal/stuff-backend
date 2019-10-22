<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Category::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameFemale,
        'user_id' => $faker->numberBetween($min = 1, $max = 20),
        'image' => substr($faker->image($dir='storage/app/public/photos'), 26),
    ];
});
