<?php

namespace Database\Seeders;

use App\Models\Post;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();

        User::create([
            'name' => 'Yandi Yandhi',
            'username' => 'Yandi Yandhi',
            'email' => 'yandiyandhi@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'Dodi',
        //     'email' => 'dodi12@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

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
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic?',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic? Maxime fugiat a quae eveniet rerum? Ad esse a delectus nemo cupiditate maxime, asperiores, eum laudantium quam doloremque non dolorum earum, soluta dicta molestiae assumenda rem iste aliquam quasi quia ex laboriosam dolorem reprehenderit atque. Unde laudantium ipsa voluptatem distinctio cupiditate dolores possimus. Sint, quaerat sequi laboriosam rerum praesentium nobis necessitatibus laudantium deleniti molestias, alias numquam! Dolores enim dignissimos aut, totam voluptate qui consequatur est temporibus, non fugiat eveniet quaerat sed nulla, sint blanditiis. Deserunt, ipsa aliquid?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic?',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic? Maxime fugiat a quae eveniet rerum? Ad esse a delectus nemo cupiditate maxime, asperiores, eum laudantium quam doloremque non dolorum earum, soluta dicta molestiae assumenda rem iste aliquam quasi quia ex laboriosam dolorem reprehenderit atque. Unde laudantium ipsa voluptatem distinctio cupiditate dolores possimus. Sint, quaerat sequi laboriosam rerum praesentium nobis necessitatibus laudantium deleniti molestias, alias numquam! Dolores enim dignissimos aut, totam voluptate qui consequatur est temporibus, non fugiat eveniet quaerat sed nulla, sint blanditiis. Deserunt, ipsa aliquid?',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic?',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic? Maxime fugiat a quae eveniet rerum? Ad esse a delectus nemo cupiditate maxime, asperiores, eum laudantium quam doloremque non dolorum earum, soluta dicta molestiae assumenda rem iste aliquam quasi quia ex laboriosam dolorem reprehenderit atque. Unde laudantium ipsa voluptatem distinctio cupiditate dolores possimus. Sint, quaerat sequi laboriosam rerum praesentium nobis necessitatibus laudantium deleniti molestias, alias numquam! Dolores enim dignissimos aut, totam voluptate qui consequatur est temporibus, non fugiat eveniet quaerat sed nulla, sint blanditiis. Deserunt, ipsa aliquid?',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic?',
        //     'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Esse voluptatem odit, modi a nulla provident eveniet architecto incidunt quae soluta nemo dolore hic? Maxime fugiat a quae eveniet rerum? Ad esse a delectus nemo cupiditate maxime, asperiores, eum laudantium quam doloremque non dolorum earum, soluta dicta molestiae assumenda rem iste aliquam quasi quia ex laboriosam dolorem reprehenderit atque. Unde laudantium ipsa voluptatem distinctio cupiditate dolores possimus. Sint, quaerat sequi laboriosam rerum praesentium nobis necessitatibus laudantium deleniti molestias, alias numquam! Dolores enim dignissimos aut, totam voluptate qui consequatur est temporibus, non fugiat eveniet quaerat sed nulla, sint blanditiis. Deserunt, ipsa aliquid?',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
