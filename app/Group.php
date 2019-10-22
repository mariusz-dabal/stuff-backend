<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $guarded = [];

    public function category () {
       return $this->belongsTo('App\Category');
    }

    public function sites () {
        return $this->hasMany('App\Site');
    }
}
