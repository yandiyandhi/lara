<?php

namespace App\Models;

class Post
{
    private static $blogpost = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Yandi Yandhi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae inventore eos, consequuntur a quidem quod nulla vero earum laudantium ad porro odio tempore labore ut! Doloremque quae impedit a ipsa eos odio exercitationem aperiam vitae nulla reiciendis unde sed, itaque qui non odit veniam praesentium, ut quidem fuga animi repellendus. Fuga aperiam et nobis ab possimus, quisquam consectetur quae dolorem expedita? Inventore consequatur saepe temporibus assumenda qui. Odit cupiditate ut perspiciatis sunt error inventore reiciendis, quae placeat ratione architecto ex?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Yandi",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae inventore eos, consequuntur a quidem quod nulla vero earum laudantium ad porro odio tempore labore ut! Doloremque quae impedit a ipsa eos odio exercitationem aperiam vitae nulla reiciendis unde sed, itaque qui non odit veniam praesentium, ut quidem fuga animi repellendus. Fuga aperiam et nobis ab possimus, quisquam consectetur quae dolorem expedita? Inventore consequatur saepe temporibus assumenda qui. Odit cupiditate ut perspiciatis sunt error inventore reiciendis, quae placeat ratione architecto ex?"
        ]
    ];


    public static function all()
    {
        return collect(self::$blogpost);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
