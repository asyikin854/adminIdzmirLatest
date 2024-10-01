@extends('layouts.authentication.master')
@section('title', 'Programs')

@section('css')

@endsection

@section('style')
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/select2.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/owlcarousel.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('assets/css/vendors/range-slider.css')}}">
@endsection

@section('content')
<div class="container-fluid product-wrapper">
   <div class="product-grid">
     <div class="feature-products">
       <div class="row">
         <div class="col-md-6 products-total">
           <div class="square-product-setting d-inline-block"><a class="icon-grid grid-layout-view" href="#" data-original-title="" title=""><i data-feather="grid"></i></a></div>
           <div class="square-product-setting d-inline-block"><a class="icon-grid m-0 list-layout-view" href="#" data-original-title="" title=""><i data-feather="list"></i></a></div>
           <div class="grid-options d-inline-block">
             <ul>
               <li><a class="product-2-layout-view" href="#" data-original-title="" title=""><span class="line-grid line-grid-1 bg-primary"></span><span class="line-grid line-grid-2 bg-primary"></span></a></li>
               <li><a class="product-3-layout-view" href="#" data-original-title="" title=""><span class="line-grid line-grid-3 bg-primary"></span><span class="line-grid line-grid-4 bg-primary"></span><span class="line-grid line-grid-5 bg-primary"></span></a></li>
               <li><a class="product-4-layout-view" href="#" data-original-title="" title=""><span class="line-grid line-grid-6 bg-primary"></span><span class="line-grid line-grid-7 bg-primary"></span><span class="line-grid line-grid-8 bg-primary"></span><span class="line-grid line-grid-9 bg-primary"></span></a></li>
             </ul>
           </div>
         </div>
         <div class="col-md-6 text-sm-end"><span class="f-w-600 m-r-5">Showing Products 1 - 24 Of 200 Results</span>
           <div class="select2-drpdwn-product select-options d-inline-block">
             <select class="form-control btn-square" name="select">
               <option value="opt1">Featured</option>
               <option value="opt2">Lowest Prices</option>
               <option value="opt3">Highest Prices</option>
             </select>
           </div>
         </div>
       </div>
       <div class="row">
         <div class="col-sm-3">
           <div class="product-sidebar">
             <div class="filter-section">
               <div class="card">
                 <div class="card-header">
                   <h6 class="mb-0 f-w-600">Filters<span class="pull-right"><i class="fa fa-chevron-down toggle-data"></i></span></h6>
                 </div>
                 <div class="left-filter">
                   <div class="card-body filter-cards-view animate-chk">
                     <div class="product-filter">
                       <h6 class="f-w-600">Category</h6>
                       <div class="checkbox-animated mt-0">
                         <label class="d-block" for="edo-ani5">
                           <input class="radio_animated" id="edo-ani5" type="radio" data-original-title="" title="">Man Shirt
                         </label>
                         <label class="d-block" for="edo-ani6">
                           <input class="radio_animated" id="edo-ani6" type="radio" data-original-title="" title="">Man Jeans
                         </label>
                         <label class="d-block" for="edo-ani7">
                           <input class="radio_animated" id="edo-ani7" type="radio" data-original-title="" title="">Woman Top
                         </label>
                         <label class="d-block" for="edo-ani8">
                           <input class="radio_animated" id="edo-ani8" type="radio" data-original-title="" title="">Woman Jeans
                         </label>
                         <label class="d-block" for="edo-ani9">
                           <input class="radio_animated" id="edo-ani9" type="radio" data-original-title="" title="">Man T-shirt
                         </label>
                       </div>
                     </div>
                     <div class="product-filter">
                       <h6 class="f-w-600">Brand</h6>
                       <div class="checkbox-animated mt-0">
                         <label class="d-block" for="chk-ani">
                           <input class="checkbox_animated" id="chk-ani" type="checkbox" data-original-title="" title=""> Levi's
                         </label>
                         <label class="d-block" for="chk-ani1">
                           <input class="checkbox_animated" id="chk-ani1" type="checkbox" data-original-title="" title="">Diesel
                         </label>
                         <label class="d-block" for="chk-ani2">
                           <input class="checkbox_animated" id="chk-ani2" type="checkbox" data-original-title="" title="">Lee
                         </label>
                         <label class="d-block" for="chk-ani3">
                           <input class="checkbox_animated" id="chk-ani3" type="checkbox" data-original-title="" title="">Hudson
                         </label>
                         <label class="d-block" for="chk-ani4">
                           <input class="checkbox_animated" id="chk-ani4" type="checkbox" data-original-title="" title="">Denizen
                         </label>
                         <label class="d-block" for="chk-ani5">
                           <input class="checkbox_animated" id="chk-ani5" type="checkbox" data-original-title="" title="">Spykar
                         </label>
                       </div>
                     </div>
                     <div class="product-filter slider-product">
                       <h6 class="f-w-600">Colors</h6>
                       <div class="color-selector">
                         <ul>
                           <li class="white"></li>
                           <li class="gray"></li>
                           <li class="black"></li>
                           <li class="orange"></li>
                           <li class="green"></li>
                           <li class="pink"></li>
                           <li class="yellow"></li>
                           <li class="blue"></li>
                           <li class="red"></li>
                         </ul>
                       </div>
                     </div>
                     <div class="product-filter pb-0">
                       <h6 class="f-w-600">Price</h6>
                       <input id="u-range-03" type="text">
                       <h6 class="f-w-600">New Products</h6>
                     </div>
                     <div class="product-filter pb-0 new-products">
                       <div class="owl-carousel owl-theme" id="testimonial">
                         <div class="item">
                          @foreach($packages as $package)
                           <div class="product-box row">
                             <div class="product-img col-md-5"><img class="img-fluid img-100" src="{{ asset('assets/images/ecommerce/01.jpg') }}" alt="" data-original-title="" title=""></div>
                             <div class="product-details col-md-7 text-start"><span><i class="fa fa-star font-warning me-1"></i><i class="fa fa-star font-warning me-1"></i><i class="fa fa-star font-warning me-1"></i><i class="fa fa-star font-warning me-1"></i><i class="fa fa-star font-warning"></i></span>
                               <p class="mb-0">{{$package->package_name}}</p>
                               <div class="product-price">RM {{$package->package_wkday_price}}</div>
                             </div>
                           </div>
                          @endforeach
                         </div>
                       </div>
                     </div>
                     <div class="product-filter text-center"><img class="img-fluid banner-product" src="{{ asset('assets/images/ecommerce/banner.jpg') }}" alt="" data-original-title="" title=""></div>
                   </div>
                 </div>
               </div>
             </div>
           </div>
         </div>
         <div class="col-md-9 col-sm-12">
           <form>
             <div class="form-group m-0">
               <input class="form-control" type="search" placeholder="Search.." data-original-title="" title=""><i class="fa fa-search"></i>
             </div>
           </form>
         </div>
       </div>
     </div>
     <div class="product-wrapper-grid">
       <div class="row">
        @foreach($packages as $package)
         <div class="col-xl-3 col-sm-6 xl-4">
           <div class="card">
             <div class="product-box">
               <div class="product-img"><img class="img-fluid" src="{{ asset('assets/images/ecommerce/01.jpg') }}" alt="">
                 <div class="product-hover">
                   <ul>
                     <li>
                       <button class="btn" type="button" data-bs-toggle="modal" data-bs-target="#modal_{{$package->id}}"><i class="icon-eye"></i></button>
                     </li>
                   </ul>
                 </div>
               </div>
               
               <!-- Modal for each product -->
               <div class="modal fade" id="modal_{{$package->id}}" tabindex="-1" role="dialog" aria-labelledby="modalLabel{{$package->id}}" aria-hidden="true">
                 <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                   <div class="modal-content">
                     <div class="modal-header">
                       <div class="product-box row">
                         <div class="product-img col-lg-6"><img class="img-fluid" src="{{ asset('assets/images/ecommerce/01.jpg') }}" alt=""></div>
                         <div class="product-details col-lg-6 text-start">
                           <h4>{{$package->package_name}}</h4>
                           <div class="product-price">RM {{$package->package_wkday_price}}
                             <del>RM {{$package->package_normal_price}}</del>
                           </div>
                           <div class="product-view">
                             <h6 class="f-w-600">Program Description</h6>
                             <ul style="list-style-type: circle; margin-left:5px">
                               @if ($package->package_long_desc1)
                                 <li>{{ $package->package_long_desc1 }}</li>
                               @endif
                               @if ($package->package_long_desc2)
                                 <li>{{ $package->package_long_desc2 }}</li>
                               @endif
                               @if ($package->package_long_desc3)
                                 <li>{{ $package->package_long_desc3 }}</li>
                               @endif
                             </ul><br>
                             <ol>
                               @if ($package->package_short_desc1)
                                 <li>{{ $package->package_short_desc1 }}</li>
                               @endif
                               @if ($package->package_short_desc2)
                                 <li>{{ $package->package_short_desc2 }}</li>
                               @endif
                               @if ($package->package_short_desc3)
                                 <li>{{ $package->package_short_desc3 }}</li>
                               @endif
                               @if ($package->package_short_desc4)
                                 <li>{{ $package->package_short_desc4 }}</li>
                               @endif
                               @if ($package->package_short_desc5)
                                 <li>{{ $package->package_short_desc5 }}</li>
                               @endif
                             </ol>
                           </div>
                           <div class="product-size">
                             <div class="table-responsive">
                               <table class="table table-bordered">
                                 <tr>
                                   <th>Normal Price</th>
                                   <td>RM {{$package->package_normal_price}}</td>
                                 </tr>
                                 <tr>
                                   <th>Discounted Price Weekday</th>
                                   <td>RM {{$package->package_wkday_price}}</td>
                                 </tr>
                                 <tr>
                                   <th>Discounted Price Weekend</th>
                                   <td>RM {{$package->package_wkend_price}}</td>
                                 </tr>
                               </table>
                             </div>
                           </div>
                           <div class="product-qnty">
                             <div class="addcart-btn">
                               <a class="btn btn-danger" data-bs-dismiss="modal" aria-label="Close">Close</a>
                               <form action="{{ route('packageProceed-parent', ['child_id' => $child_id, 'package_id' => $package->id]) }}" method="POST" style="display:inline;">
                                 @csrf
                                 <input type="hidden" name="package_id" value="{{$package->id}}">
                                 <button class="btn btn-primary ms-2" type="submit">Proceed</button>
                               </form>
                             </div>
                           </div>
                         </div>
                       </div>
                       <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                     </div>
                   </div>
                 </div>
               </div>

               <div class="product-details">
                 <a href="{{ route('product-page')}}">
                   <h4>{{$package->package_name}}</h4></a>
                 <p>{{ $package->short_description }}</p>
                 <div class="product-price">RM {{$package->package_wkday_price}} 
                   <del>RM {{$package->package_normal_price}}</del>
                 </div>
               </div>
             </div>
           </div>
         </div>
        @endforeach
       </div>
     </div>
   </div>
 </div>
@endsection

@section('script')
<script src="{{asset('assets/js/range-slider/ion.rangeSlider.min.js')}}"></script>
<script src="{{asset('assets/js/range-slider/rangeslider-script.js')}}"></script>
<script src="{{asset('assets/js/touchspin/vendors.min.js')}}"></script>
<script src="{{asset('assets/js/touchspin/touchspin.js')}}"></script>
<script src="{{asset('assets/js/touchspin/input-groups.min.js')}}"></script>
<script src="{{asset('assets/js/owlcarousel/owl.carousel.js')}}"></script>
<script src="{{asset('assets/js/select2/select2.full.min.js')}}"></script>
<script src="{{asset('assets/js/select2/select2-custom.js')}}"></script>
<script src="{{asset('assets/js/product-tab.js')}}"></script>
@endsection
