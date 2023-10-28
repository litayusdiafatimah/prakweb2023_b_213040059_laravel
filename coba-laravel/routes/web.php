<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view ('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "name" => "Lita Yusdia Fatimah",
        "email" => "lita.213040059@mail.unpas.ac.id",
        "image" => "Litayf.jpg"
    ]);
});



Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Lita Yusdia Fatimah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum repudiandae soluta id provident vitae repellendus delectus ipsa, saepe voluptates tenetur ullam quam voluptate nobis? Consequuntur voluptas officia ea nulla iste repellendus praesentium provident, earum ipsum delectus obcaecati voluptate. Assumenda quis voluptas doloremque laudantium fuga voluptate, aut beatae odit dolor eos eius sequi neque culpa perferendis? Nemo porro eaque reprehenderit laborum debitis explicabo mollitia dicta repellendus, nobis saepe impedit provident ducimus est eveniet itaque officia dolore, quia autem sit fugiat tempora!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Haykal Alvegio",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, repellat. Saepe fuga corporis magnam exercitationem molestiae doloribus ab esse asperiores odit quasi. Ad consectetur quis ullam sunt ipsam possimus numquam nulla maiores fuga! Earum, laboriosam veniam. Magnam hic omnis non sequi laudantium, saepe, itaque modi ipsa voluptatibus deleniti dolor possimus nisi provident accusantium temporibus nulla, officia eaque aliquam. Temporibus impedit nulla earum in. Laboriosam maxime eos repudiandae illo qui possimus, amet sapiente voluptatem recusandae harum ab modi quisquam atque nulla delectus sit reiciendis dolorem cum explicabo, eligendi iure culpa quidem corrupti. Tempora illo dolores reprehenderit doloribus temporibus sed, ab quo?"
        ],
    ];
    
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

//halaman single post
Route::get('posts/{slug}', function ($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Lita Yusdia Fatimah",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatum repudiandae soluta id provident vitae repellendus delectus ipsa, saepe voluptates tenetur ullam quam voluptate nobis? Consequuntur voluptas officia ea nulla iste repellendus praesentium provident, earum ipsum delectus obcaecati voluptate. Assumenda quis voluptas doloremque laudantium fuga voluptate, aut beatae odit dolor eos eius sequi neque culpa perferendis? Nemo porro eaque reprehenderit laborum debitis explicabo mollitia dicta repellendus, nobis saepe impedit provident ducimus est eveniet itaque officia dolore, quia autem sit fugiat tempora!"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Haykal Alvegio",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Non, repellat. Saepe fuga corporis magnam exercitationem molestiae doloribus ab esse asperiores odit quasi. Ad consectetur quis ullam sunt ipsam possimus numquam nulla maiores fuga! Earum, laboriosam veniam. Magnam hic omnis non sequi laudantium, saepe, itaque modi ipsa voluptatibus deleniti dolor possimus nisi provident accusantium temporibus nulla, officia eaque aliquam. Temporibus impedit nulla earum in. Laboriosam maxime eos repudiandae illo qui possimus, amet sapiente voluptatem recusandae harum ab modi quisquam atque nulla delectus sit reiciendis dolorem cum explicabo, eligendi iure culpa quidem corrupti. Tempora illo dolores reprehenderit doloribus temporibus sed, ab quo?"
        ],
    ];

    $new_post = [];
    foreach($blog_posts as $post) {
        if($post["slug"] === $slug) {
            $new_post = $post;
        }
    }

    return view ('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});