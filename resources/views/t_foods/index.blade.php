@extends('t_foods.layout')
 
@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Bai kiem tra</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-success" href="{{ route('t_foods.create') }}"> Create New One</a>
            </div>
        </div>
    </div>
   
    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif
   <style>
    
        #grid{
    display:grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 50px;
    }
   </style>
    <!-- <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Image</th>
            <th>Price</th>
            <th>Old price</th>
            
            <th width="280px">Action</th>
        </tr>
        @foreach ($t_foods as $t_food)
        <tr>
            <td>{{ ++$i }}</td>
            <td>{{ $t_food->name }}</td>
            <td><img href="" src="{{ $t_food->image }}"><img></td>
            <td>{{ $t_food->price }}</td>
            <td>{{ $t_food->old_price }}</td>
            <td>
                <form action="{{ route('t_foods.destroy',$t_food->id) }}" method="POST">   
                    <a class="btn btn-info" href="{{ route('t_foods.show',$t_food->id) }}">Show</a>
                       @csrf
                    @method('DELETE')                        
                </form>
            </td>
        </tr>
        @endforeach
    </table> -->
    <div class= "container-fluid">
         
         <div class= "row d-inline-flex">
            <!-- Gallery Item 1 -->
            
            <div class ="col-6 col-sm-4 col-md-3 p-2" id="grid">
            @foreach ($t_foods as $t_food)
               <div class="card h-100">
                  <img class="card-img-top" weight= "auto" height="187px" src="{{ $t_food->image }}"/>
                  <h4 class="card-title text-center">{{ $t_food->name }}</h4>
                  <p class="card-text text-center">{{ $t_food->price }}</p>
                  <p class="card-text text-center">{{ $t_food->old_price }}</p>
                  <p class="card-text text-center">
                    <a class="btn btn-primary" href="{{ route('t_foods.show',$t_food->id) }}">Chi tiết</a>
                       @csrf
                    @method('DELETE')                        
                </p>
               </div>
            @endforeach
            </div>
            
            <!-- <div class ="col-6 col-sm-4 col-md-3 p-2">
               <div class="card h-100">
                  <img class="card-img-top" src="../images/animal2.png"/>
                  <h4 class="card-title text-center">Horse</h4>
               </div>
            </div>
            
            <div class ="col-6 col-sm-4 col-md-3 p-2">
               <div class="card h-100">
                  <img class="card-img-top" src="../images/animal3.png"/>
                  <h4 class="card-title text-center">Duck</h4>
               </div>
            </div>
            
            <div class ="col-6 col-sm-4 col-md-3 p-2">
               <div class="card h-100">
                  <img class="card-img-top" src="../images/animal4.png"/>
                  <h4 class="card-title text-center">Goat</h4>
               </div>
            </div>
            
            <div class ="col-6 col-sm-4 col-md-3 p-2">
               <div class="card h-100">
                  <img class="card-img-top" src="../images/animal5.png"/>
                  <h4 class="card-title text-center">Chicken</h4>
               </div>
            </div>
            
            <div class ="col-6 col-sm-4 col-md-3 p-2">
               <div class="card h-100">
                  <img class="card-img-top" src="../images/animal6.png"/>
                  <h4 class="card-title text-center">Cow</h4>
               </div>
            </div> -->
         </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>



  
    {!! $t_foods->links() !!}
      
@endsection