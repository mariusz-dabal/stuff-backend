<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Site extends Model
{
    protected $guarded = [];
    protected $attributes = [
        'important' => 1,
    ];

    public function user ()
    {
        return $this->belongsTo('App\User');
    }

    public function group () {
        return $this->belongsTo('App\Group');
    }
}
