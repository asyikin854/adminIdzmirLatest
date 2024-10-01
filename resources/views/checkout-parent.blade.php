@extends('layouts.authentication.master')
@section('title', 'Payment')

@section('css')
@endsection

@section('content')
<div class="container-fluid checkout">
   <div class="card">
      <div class="card-header">
         <h4>Payment Details</h4>
      </div>
      <div class="card-body">
         <div class="row">
            <div class="col-xl-6 col-sm-12">
               <form action="{{route('payment.submit-parent')}}" method="POST">
                  @csrf
                  <!-- Hidden fields to send necessary data -->
                  <input type="hidden" name="child_id" value="41">
                  <input type="hidden" name="total_price" value="700">
                  <input type="hidden" name="parent_id" value="5>
                  <input type="hidden" name="selected_slots" value="jkhgjk">
                  <input type="hidden" name="additional_sessions" value="dkljd">
                  <input type="hidden" name="session_id" value="4d4b0eb9-e77f-41c2-b891-9e80783b2358">
                  <div class="row">
                     <div class="mb-3 col-sm-12">
                     <h5>Child Details</h5>
                     <div class="table-responsive">
                     <table class="table table-bordered">
                        <tr>
                           <th>Child Name</th>
                           <td>Muhaimin</td>
                        </tr><tr>
                           <th>IC Number</th>
                           <td>54525</td>
                        </tr><tr>
                           <th>Program</th>
                           <td>Ready To School Program </td>
                        </tr>
                     </table></div></div>

                     <div class="mb-3 col-sm-12">
                     <h5>Account Details</h5>
                     <div class="table-responsive">
                     <table class="table table-bordered">
                        <tr>
                           <th>Username</th>
                           <td>Muhaimin123 </td>
                        </tr><tr>
                           <th>Email</th>
                           <td>muhaimin@gmail.com</td>
                        </tr>
                     </table></div></div>

                     <div class="mb-3 col-sm-12">
                     <h5>Parent Details</h5>
                     <div class="table-responsive">
                     <table class="table table-bordered">
                        <tr>
                           <th>Father's Name</th>
                           <td>Muhaimin</td>
                           <th>Mother's Name</th>
                           <td>Nazrah</td>
                        </tr><tr>
                           <th>Phone No.</th>
                           <td>6789789</td>
                           <th>Phone No.</th>
                           <td>6789969</td>
                        </tr>
                     </table></div></div>
                  </div>
            </div>
            <div class="col-xl-6 col-sm-12">
               <div class="checkout-details">
                  <div class="order-box">
                     <div class="title-box">
                        <div class="checkbox-title">
                           <h4>Program</h4>
                           <span>Total</span>
                        </div>
                     </div>
                     <ul class="qty">
                        <li>RTS<span>RM 700</span></li>
                        <li>Additional Session = 700 </span></li>
                     </ul>
                     <ul class="sub-total total">
                        <li>Total <span class="count">RM 700 </span></li>
                     </ul>
                     <div class="animate-chk">
                        <div class="row">
                           <div class="col">
                              <label class="d-block" for="edo-ani">
                              <input class="radio_animated" id="edo-ani" type="radio" name="rdo-ani" checked="" data-original-title="" title="">Online Banking
                           </div>
                        </div>
                     </div>
                     <div class="order-place"><button class="btn btn-primary" type="submit">Proceed</button></div></form>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
@endsection

@section('script')
@endsection