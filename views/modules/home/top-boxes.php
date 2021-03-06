<?php

$item = null;
$value = null;
$order = "id";

$sales = ControllerWithdrawal::ctrAddingTotalSales();

$categories = ControllerCategory::ctrShowCategories($item, $value);
$totalCategories = count($categories);


$customers = ControllerpartsUser::ctrShowpartsUser($item, $value);
$totalCustomers = count($customers);

$products = ControllerParts::ctrShowParts($item, $value, $order);
$totalProducts = count($products);

?>

 
 <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?php echo number_format($sales["total"]); ?></h3>

              <p>Total Spare Parts Used</p>
            </div>
            <div class="icon">
            
              <!-- <i class="ion ion-social-usd"></i> -->
              <!-- <i class="ion-icon name='hammer-sharp'"></i> -->
              <!-- <ion-icon name="hammer-sharp"></ion-icon> -->
              <ion-icon name="build-sharp"></ion-icon>
            </div>
            <a href="withdrawn" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?php echo number_format($totalCategories); ?><sup style="font-size: 20px"></sup></h3>

              <p>Product Family</p>
            </div>
            <div class="icon">
              <i class="ion ion-clipboard"></i>
            </div>
            <a href="categories" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo number_format($totalCustomers); ?></h3>

              <p>Spare Parts User</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
            <a href="partsUser" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3><?php echo number_format($totalProducts); ?></h3>

              <p>Number of Spare Parts in Batam</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-cart"></i>
            </div>
            <a href="parts" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>