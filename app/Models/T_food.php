<?php
  
namespace App\Models;
  
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
  
class T_food extends Model
{
    use HasFactory;
  
    protected $fillable = [
       'name', 'image','price','old_price','detail','type'
    ];
    protected $table="t_food";
}
