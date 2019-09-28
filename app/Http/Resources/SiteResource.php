<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Storage;

class SiteResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // $path = public_path().'/storage/photos/'. $this->thumbnail;
        $path = Storage::url('public/photos/' . $this->thumbnail);
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'parent_id' => $this->parent_id,
            'category_id' => $this->category_id,
            'name' => $this->name,
            'url' => $this->url,
            'notes' => $this->notes,
            'size_id' => $this->size_id,
            'status_id' => $this->status_id,
            'thumbnail' => $path,
        ];
    }
}
