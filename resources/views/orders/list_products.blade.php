
<html lang="en">
<head>
    <title>Orders</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">  
    <link  href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
</head>
<body>
   <div class="container" style="margin-top:40px;">
    
     <div alin="left">  <a href="{{ route('home')}}" class="btn btn-primary">Home</a> </div>
      <h2>Orders</h2>
      <table class="table table-bordered" id="table">
         <thead>
            <tr>
               <th>Id</th>
               <th>Category</th>
               <th>Product Name</th>
               <th>Product Image</th>
               <th>Product Price</th>
               <th>Order Date</th>
               <th>Ordered By</th>
               <th >Actions</th>
            </tr>
         </thead>
      </table>
   </div>
  
   <script>
     $(function() {
           $('#table').DataTable({
           processing: true,
           serverSide: true,
           ajax: '{{ url('index_new') }}',
           columns: [
                    { data: 'id', name: 'id' },
                    { data: 'category_name', name: 'category_name' },
                    { data: 'product_name', name: 'product_name' },
                    { data: 'product_image', name: 'product_image',
                        render: function( data, type, full, meta ) {
                          var getUrl = "http://"+window.location.host+"/image/"+data;
                          return "<img src='"+getUrl+"'  height=\"50\"/>";
                        }
                    },
                    { data: 'product_price', name: 'product_price' },
                    { data: 'order_date', name: 'order_date' },
                    { data: 'ordered_by', name: 'ordered_by' },
                    { data: 'id', name: 'id',
                        render: function( data, type, full, meta ) {
                          var getEditUrl = "http://"+window.location.host+"/orders/"+data+"/edit";
                          $action_buttons =  "<div><div style='float:left;'><a href='"+getEditUrl+"' class='btn btn-success '>Edit</a></div>";
                          
                          /*
                          * TBD : Following route should be called with POST Request to delete an order.
                          */
                          // http://localhost:8000/orders/201
                          var getDeleteUrl = "http://"+window.location.host+"/orders/"+data+"/edit";
                          $action_buttons += "<div style='float:left;margin-left:5px;'><a href='"+getDeleteUrl+"' class='btn btn-danger '>Delete</a></div></div>";
                          return $action_buttons;
                        }
                    }
                 ]
        });
     });
     $(document).on('click', '.edit-order', function (e) {
        var elem = $(this);
        console.log("Edit Clicked"+elem.order_id);
        
     });   
   </script>
 </body>
</html>