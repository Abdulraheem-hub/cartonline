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
{block name='customer_form'}
  {block name='customer_form_errors'}
    {include file='_partials/form-errors.tpl' errors=$errors['']}
  {/block}	
<form action="{block name='customer_form_actionurl'}{$action}{/block}" id="customer-form" class="js-customer-form" method="post" >
  <section>
    {block "form_fields"}
      {foreach from=$formFields item="field"}
        {block "form_field"}
	  
	     <!--added by skt-->
         {if $field.name=='id_state'}
          <div id='contains_states'>
           {form_field field=$field}
          </div>
	     {else}  
	      <!--ended by skt-->
	  
           {form_field field=$field}
	  
	     <!--added by skt-->
         {/if}
         <!--ended by skt-->
        {/block}
	  <!--added by skt-->
	   {if $field.name=='password' and !Context::getContext()->customer->isLogged()}
	    	<div class="form-group row align-items-center"> 
                <label class="col-md-2 col-form-label required" for="passwd_confirm">{l s='Confirm password'}</label>
               	<div class="col-md-8">
				<input type="password" class="form-control js-child-focus" name="passwd_confirm" id="passwd_confirm" required />
	  			</div>
				<div class="col-md-2 form-control-comment confirm_password"></div>	
            </div>
	  {/if}
	  <!--ended by skt-->
      {/foreach}
	  {$hook_create_account_form nofilter}
    {/block}
  </section>

  {block name='customer_form_footer'}
    <footer class="form-footer text-center clearfix">
      <input type="hidden" name="submitCreate" value="1">
      {block "form_buttons"}
        <button class="btn btn-primary form-control-submit" data-link-action="save-customer" type="submit">
          {l s='Save' d='Shop.Theme.Actions'}
        </button>
      {/block}
    </footer>
  {/block}

</form>
{/block}

{literal}

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	
	
	$('select[name=id_country]').change(function() {
		$.ajax({
			url: "index.php",
			cache: false,
			//data: "token="+prestashop['static_token']+"ajax=1&action=states&tab=AdminStates&no_empty=0&id_country="+$(this).val() + "&id_state=" + $('select[name=id_state]').val(),
			data: "token="+prestashop['static_token']+"&ajax=1&action=states&controller=Auth&no_empty=0&id_country="+$(this).val() + "&id_state=" + $('select[name=id_state]').val(),
			success: function(html)
			{
				if (html == 'false')
				{
					$("#contains_states").fadeOut();
					$('select[name=id_state] option[value=0]').attr("selected", "selected");
				}
				else
				{
					$("select[name=id_state]").html(html);
					$("#contains_states").fadeIn();
					$('select[name=id_state] option[value=' + $('select[name=id_state]').val() + ']').attr("selected", "selected");
				}
			}
		});
	});
	 $('select[name=id_country]').trigger('change');
</script>	
{/literal}
