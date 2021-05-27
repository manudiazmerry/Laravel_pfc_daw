<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Web extends Model
{
    use HasFactory;
    
    //permiso para poder usar el método create que viene protegido por las inserciones en masa
    //protected $fillable=['nombre','url','categoria'];
}
