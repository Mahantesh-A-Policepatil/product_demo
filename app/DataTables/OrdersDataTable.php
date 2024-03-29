<?php

namespace App\DataTables;

use App\Models\Order;
use Yajra\DataTables\Html\Button;
use Yajra\DataTables\Html\Column;
use Yajra\DataTables\Html\Editor\Editor;
use Yajra\DataTables\Html\Editor\Fields;
use Yajra\DataTables\Services\DataTable;

class OrdersDataTable extends DataTable
{
    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        return datatables()
            ->eloquent($query)
            ->addColumn('action', 'orders.action');
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Order $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Order $model)
    {
        return $model->newQuery();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        return $this->builder()
                    ->setTableId('orders-table')
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                    ->dom('Bfrtip')
                    ->orderBy(1)
                    ->buttons(
                        Button::make('create'),
                        Button::make('export'),
                        Button::make('print'),
                        Button::make('reset'),
                        Button::make('reload')
                    );
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        if(\Auth::user()->is_permission == 0)
        {
            $order_items = Orders::where('ordered_by',Auth::id())->latest()->get();
        }
        else // If Admin then show all records
        {
            $order_items = Orders::latest()->get();
        }

        $results = $order_items->map(function ($item, $key) {
            // return [
            //     "id" => $item->id,
            //     "category_name" => isset($item->category->name) ? $item->category->name : "",
            //     "product_name" => isset($item->product->name) ? $item->product->name : "",
            //     "product_image" => isset($item->product->image_path) ? $item->product->image_path : "",
            //     "product_price" => isset($item->product->price) ? $item->product->price : "",
            //     "order_date" => isset($item->order_date) ? Carbon::parse($item->order_date)->format("Y-m-d g:i A") : "",
            //     "ordered_by" => isset($item->user->name) ? ucfirst($item->user->name) : "",
            // ];
            // return [
            //     Column::computed('action')
            //           ->exportable(false)
            //           ->printable(false)
            //           ->width(60)
            //           ->addClass('text-center'),
            //     Column::make('id'),
            //     Column::make('category_name'),
            //     Column::make('created_at'),
            //     Column::make('updated_at'),
            // ];
        });   
        return [
            Column::computed('action')
                  ->exportable(false)
                  ->printable(false)
                  ->width(60)
                  ->addClass('text-center'),
            Column::make('id'=> $item->id),
            Column::make("category_name" => isset($item->category->name) ? $item->category->name : "",),
            Column::make("product_name" => isset($item->product->name) ? $item->product->name : "",),
            Column::make("product_image" => isset($item->product->image_path) ? $item->product->image_path : "",),

            Column::make("product_price" => isset($item->product->price) ? $item->product->price : "",),
            Column::make("order_date" => isset($item->order_date) ? Carbon::parse($item->order_date)->format("Y-m-d g:i A") : "",),
            Column::make("ordered_by" => isset($item->user->name) ? ucfirst($item->user->name) : "",),
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'Orders_' . date('YmdHis');
    }
}
