<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $fillable = [
        'group_name', 'teacher', 'course',
    ];

    public function groups()
    {
        return $this->hasMany('App\User', 'group_id', 'id');
    }
}
