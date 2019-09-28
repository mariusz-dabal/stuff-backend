<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Site extends Model
{
    protected $guarded = [];
    protected $attributes = [
        'size_id' => 2,
        'status_id' => 1,
    ];

    public function user () 
    {
        return $this->belongsTo('App\User');
    }

    public function size ()
    {
        return $this->belongsTo('App\Size');
    }

    public function status ()
    {
        return $this->belongsTo('App\Status');
    }
}
