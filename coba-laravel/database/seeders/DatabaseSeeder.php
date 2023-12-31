<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        User::create([
            'name' =>'Lita Yusdia Fatimah',
            'username' =>'litayusdia',
            'email'=>'litayusdiaf@gmail.com',
            'password'=>bcrypt('12345')
        ]);

        // User::create([
        //     'name' =>'Haykal Alvegio',
        //     'email'=>'hl@gmail.com',
        //     'password'=>bcrypt('12355')
        // ]);
        
        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' =>'Judul Pertama',
        //     'slug'=>'judul-pertama',
        //     'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, harum voluptatum exercitationem similique officiis, reprehenderit, dolores et iusto soluta expedita quas impedit pariatur quam voluptates beatae unde architecto voluptatem quis eum deserunt consequuntur. Dicta modi esse nemo officia officiis dolor quos nam veniam laudantium. Et amet, vitae officia, odit repellendus ipsum temporibus nemo ipsa quia explicabo earum ducimus, cumque atque culpa? Nesciunt et reprehenderit iste saepe suscipit, placeat necessitatibus? Illum quos eaque tempore? Sunt minus, sequi ad rem, ex ipsum eaque, facere perspiciatis recusandae eum incidunt dolores est quaerat doloribus laborum praesentium iste? Voluptatem obcaecati ducimus nam fugiat, officia molestiae?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' =>'Judul Ke Dua',
        //     'slug'=>'judul-ke-dua',
        //     'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, harum voluptatum exercitationem similique officiis, reprehenderit, dolores et iusto soluta expedita quas impedit pariatur quam voluptates beatae unde architecto voluptatem quis eum deserunt consequuntur. Dicta modi esse nemo officia officiis dolor quos nam veniam laudantium. Et amet, vitae officia, odit repellendus ipsum temporibus nemo ipsa quia explicabo earum ducimus, cumque atque culpa? Nesciunt et reprehenderit iste saepe suscipit, placeat necessitatibus? Illum quos eaque tempore? Sunt minus, sequi ad rem, ex ipsum eaque, facere perspiciatis recusandae eum incidunt dolores est quaerat doloribus laborum praesentium iste? Voluptatem obcaecati ducimus nam fugiat, officia molestiae?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' =>'Judul Ke Tiga',
        //     'slug'=>'judul-ke-tiga',
        //     'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, harum voluptatum exercitationem similique officiis, reprehenderit, dolores et iusto soluta expedita quas impedit pariatur quam voluptates beatae unde architecto voluptatem quis eum deserunt consequuntur. Dicta modi esse nemo officia officiis dolor quos nam veniam laudantium. Et amet, vitae officia, odit repellendus ipsum temporibus nemo ipsa quia explicabo earum ducimus, cumque atque culpa? Nesciunt et reprehenderit iste saepe suscipit, placeat necessitatibus? Illum quos eaque tempore? Sunt minus, sequi ad rem, ex ipsum eaque, facere perspiciatis recusandae eum incidunt dolores est quaerat doloribus laborum praesentium iste? Voluptatem obcaecati ducimus nam fugiat, officia molestiae?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' =>'Judul Ke Empat',
        //     'slug'=>'judul-ke-empat',
        //     'excerpt'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body'=>'Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque, harum voluptatum exercitationem similique officiis, reprehenderit, dolores et iusto soluta expedita quas impedit pariatur quam voluptates beatae unde architecto voluptatem quis eum deserunt consequuntur. Dicta modi esse nemo officia officiis dolor quos nam veniam laudantium. Et amet, vitae officia, odit repellendus ipsum temporibus nemo ipsa quia explicabo earum ducimus, cumque atque culpa? Nesciunt et reprehenderit iste saepe suscipit, placeat necessitatibus? Illum quos eaque tempore? Sunt minus, sequi ad rem, ex ipsum eaque, facere perspiciatis recusandae eum incidunt dolores est quaerat doloribus laborum praesentium iste? Voluptatem obcaecati ducimus nam fugiat, officia molestiae?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
