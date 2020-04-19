@extends('base')

@section('main')
<div class="row">
 <div class="col-sm-8 offset-sm-2">
    <h1 class="display-8">Add A Product</h1>
  <div>
    @if ($errors->any())
      <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach
        </ul>
      </div><br />
    @endif
      <form method="post" action="{{ route('products.store') }}" enctype="multipart/form-data">
          @csrf
          <div class="form-group">    
              <label for="first_name">Product Name:</label>
              <input type="text" class="form-control" name="name"/>
          </div>

          <div class="form-group">
            <label for="last_name">Category:</label>
            <select class="form-control select2" name='category_id' id='category_id'>
               @foreach($categories as $row)
                  <option value="{{$row->id}}" >{{$row->name}}</option>
                @endforeach 
            </select>
          </div>

          <div class="form-group">    
              <label for="first_name">Product Price:</label>
              <input type="text" class="form-control" name="price"/>
          </div>

          <div class="form-group">
              <label for="country">Image:</label>
              <input type="file" class="form-control" name="image"/>
          </div>

          <div class="form-group">
              <label for="city">Descryption:</label>
              <textarea class="form-control" name="descryption" id="descryption"></textarea>
          </div>
                              
          <button type="submit" class="btn btn-primary">Add Product</button>
      </form>
  </div>
</div>
</div>
@endsection