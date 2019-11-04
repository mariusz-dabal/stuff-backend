<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Site::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameFemale,
        'group_id' => $faker->numberBetween($min = 1, $max = 20),
        'notes' => $faker->realText($maxNbChars = 200, $indexSize = 2),
        'url' => $faker->url,
        'important' => $faker->boolean(),
    ];
});
