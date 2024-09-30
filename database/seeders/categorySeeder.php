<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class categorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('categories')->insert([
            ['name' => 'book1'],
            ['name' => 'book2'],
            ['name' => 'book3'],
            ['name' => 'book4'],
            ['name' => 'book5']
        ]);
    }
}
