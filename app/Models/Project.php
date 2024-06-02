<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Project extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        'images' => 'array',
    ];

    /**
     * Get related type
     *
     * @return BelongsTo
     */
    public function category(): BelongsTo
    {
        return $this->belongsTo(ProjectCategory::class);
    }

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
