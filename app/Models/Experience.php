<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Experience extends Model
{
    use HasFactory;

    protected $guarded = [];


    /**
     * Scope active currencies
     *
     * @param Builder $query
     * @return void
     */
    public function scopeWhereActive(Builder $query)
    {
        $query->where('is_active', 1);
    }
}
