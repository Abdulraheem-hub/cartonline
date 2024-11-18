<div id="header-user-btn" class="col col-auto header-btn-w header-user-btn-w">
    {if $logged}
  <!--added by skt-->          
<div class="dropdown_myaccount">
	 <a class="dropbtn" href="#"
           rel="nofollow" class="header-btn header-user-btn">
		 	<i class="fa fa-user fa-fw icon" aria-hidden="true"></i>
            <span class="title">{$customer.firstname|truncate:15:'...'}</span>
     </a>
  <div class="dropdown-content">
    <a href="{$my_account_url}"><i class="fa fa-user fa-fw" aria-hidden="true"></i> {l s='My Account' d='Shop.Theme.Actions'} </a>
    <a href="?mylogout="><i class="fa fa-sign-out fa-fw" aria-hidden="true"></i> {l s='Log out' d='Shop.Theme.Actions'}</a>
  </div>
</div> 
<!--ended by skt-->	
 <!-- commented by skt 
    <a href="{$my_account_url}"
           title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
           rel="nofollow" class="header-btn header-user-btn">
            <i class="fa fa-user fa-fw icon" aria-hidden="true"></i>
            <span class="title">{$customer.firstname|truncate:15:'...'}</span>
        </a>-->
    {else}
	<!--changed from {$my_account_url} to ./?controller=authentication&create_account=1 by skt-->
        <a href="./?controller=authentication&create_account=1"
           title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
           rel="nofollow" class="header-btn header-user-btn">
            <i class="fa fa-user fa-fw icon" aria-hidden="true"></i>
            <span class="title">{l s='Register' d='Shop.Theme.Actions'}</span><!--changed by skt from Sign in to Register-->
        </a>
    {/if}
</div>
