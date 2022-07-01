<?php
  
namespace App\Http\Controllers;
   
use App\Models\T_food;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\DB;

class T_foodController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $t_foods = T_food::latest()->paginate(8);
    
        return view('t_foods.index',compact('t_foods'))
            ->with('i', (request()->input('page', 1) - 1) * 8);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('t_foods.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'image' => 'required',
            'price' => 'required',
            'old_price' => 'required',
            'detail' => 'required',
            'type'  => 'required',
        ]);
    
        T_food::create($request->all());
     
        return redirect()->route('t_foods.index')
                        ->with('success','1 new created successfully.');
                        
    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\T_food  $t_food
     * @return \Illuminate\Http\Response
     */
    public function show(T_food $t_food,$id)
    {
        $t_food =  T_food::find($id);
        return view('t_foods.show',compact('t_food'));
        
    }
     

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\T_food  $t_food
     * @return \Illuminate\Http\Response
     */

}

