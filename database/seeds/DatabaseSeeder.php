<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $this->call(UsersTableSeeder::class);
        $this->call(SitesTableSeeder::class);
         $this->call(CategoryTableSeeder::class);
         $this->call(GroupTableSeeder::class);
    }
}
