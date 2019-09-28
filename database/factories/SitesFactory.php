<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model;
use Faker\Generator as Faker;

$factory->define(App\Site::class, function (Faker $faker) {
    return [
        'name' => $faker->firstNameFemale,
        'user_id' => $faker->numberBetween($min = 1, $max = 20),
        'parent_id' => $faker->numberBetween($min = 1, $max = 30),
        'category_id' => $faker->numberBetween($min = 1, $max = 10),
        'notes' => $faker->realText($maxNbChars = 200, $indexSize = 2),
        'thumbnail' => substr($faker->image($dir='storage/app/public/photos'), 26),
        'url' => $faker->url,
        'size_id' => $faker->numberBetween($min = 1, $max = 3),
        'status_id' => $faker->numberBetween($min = 1, $max = 3),
    ];
});
