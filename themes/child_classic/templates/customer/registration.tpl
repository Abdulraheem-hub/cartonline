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
  {*l s='Create an account' d='Shop.Theme.Customeraccount'*}
{*/block*}

{block name='page_content'}
    {block name='register_form_container'}
	 <!--added by skt-->
	<div class="row">
	<div class="col-md-2">
		</div>	
		<div class="col-md-7 col-xs-12 col-md-offset-3" style="padding:10px;background:#98c8ea26;margin:20px;border:1px solid #03A6F0;">
			<p> {l s='Existing User?' d='Shop.Theme.Customeraccount'} <a href="{$urls.pages.authentication}" class="btn btn-primary">{l s='Log in!' d='Shop.Theme.Customeraccount'}</a></p>
			<center><h1>{l s='CREATE A NEW ACCOUNT' d='Shop.Theme.Customeraccount'}</h1></center>	
	<!--ended by skt-->		
      {$hook_create_account_top nofilter}
      <section class="register-form">
        
		  

          {block name='display_before_registration_form'}
              {hook h='displayRegistrationBeforeForm'}
          {/block}

        {render file='customer/_partials/customer-form.tpl' ui=$register_form}
      </section>
	<!--added by skt-->
		</div>
</div>
<!--ended by skt-->
    {/block}
{/block}
