<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Group::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameFemale,
        'category_id' => $faker->numberBetween($min = 1, $max = 10),
    ];
});
