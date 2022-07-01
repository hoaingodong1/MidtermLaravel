<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\T_foodController;
  
Route::resource('t_foods',T_foodController::class);