<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = ['name', 'image'];

    public function groups() {
        return $this->hasMany('App\Group');
    }

    public function user() {
        return $this->belongsTo('App\User');
    }

    public function sites()
    {
        return $this->hasManyThrough('App\Site', 'App\Group');
    }
}
