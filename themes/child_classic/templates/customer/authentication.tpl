{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='page.tpl'}

<!--commented block by skt-->
{*block name='page_title'*}
  {*l s='Log in to your account' d='Shop.Theme.Customeraccount'*}
{*/block*}

{block name='page_content'}
    {block name='login_form_container'}
	 <!--added by skt-->
	<div class="row">
	<div class="col-sm-6 col-xs-12" style="border-right:1px solid hsla(0,0%,63%,.25);">
		<div style="padding:10px;background:#98c8ea26;margin:20px;border:1px solid #03A6F0;">
		<center><h1>{l s='LOGIN TO EXISTING ACCOUNT' d='Shop.Theme.Customeraccount'}</h1></center>	
	<!--ended by skt-->		
      <section class="login-form" style="padding:50px;">
        {render file='customer/_partials/login-form.tpl' ui=$login_form}
      </section>
      <!--<hr/> commented by skt-->
		  	  
      {block name='display_after_login_form'}
        {hook h='displayCustomerLoginFormAfter'}
      {/block}
	  <!--added by skt-->
		</div>
		</div>
		<div class="col-sm-6 col-xs-12">
			<div style="padding:10px;background:#98c8ea26;margin:20px;border:1px solid #03A6F0;">	
		<center><h1>{l s='NEW USER? CREATE A NEW ACCOUNT' d='Shop.Theme.Customeraccount'}</h1></center>	
			<div style="padding:50px;">
			<br><br><p>If you have not Registered, you can register by clicking the "Register" Botton below.</p><br><br><br>
			<div class="no-account">
        <a href="{$urls.pages.register}" data-link-action="display-register-form" class="btn btn-primary">
          {l s='Register' d='Shop.Theme.Customeraccount'} <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
			</div>
      </div>
			</div>		
	  <!--end by skt-->	
     <!-- commented by skt <div class="no-account">
        <a href="{$urls.pages.register}" data-link-action="display-register-form">
          {l s='No account? Create one here' d='Shop.Theme.Customeraccount'} <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
      </div>-->
	<!--added by skt-->
		</div>
</div>
	<!--ended by skt-->		
	  
    {/block}
{/block}
