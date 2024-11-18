{**
* Registration Fields
*
* NOTICE OF LICENSE
*
* You are not authorized to modify, copy or redistribute this file.
* Permissions are reserved by FME Modules.
*
*  @author    FME Modules
*  @copyright 2018 fmemodules All right reserved
*  @license   FMM Modules
*  @package   Registration Fields
 *}
<!-- registration fields heading -->
 <!-- commented by skt to remove custom field heading from displaying in email
<table id="summary-tab">
	<tr>
		<td class="center grey bold">
			{if isset($customfields_heading) AND $customfields_heading}
				{$customfields_heading|escape:'htmlall':'UTF-8'}
			{else}
				{l s='Custom Fields' mod='customfields' pdf='true'}
			{/if}
		</td>
	</tr>
</table>-->
<!-- registration fields -->
<table><!-- removed id="summary-tab" from table by skt--> 
	{foreach from=$checkout_steps key=key item=title}
		{if isset($grouped_fields[$key]) AND $grouped_fields[$key]}
		 	<!-- commented by skt to not display in email<tr>
		 		<td colspan="2" class="header" valign="middle" style="border-top:1px solid #000;border-bottom:1px solid #000;text-align:center">{$title|escape:'htmlall':'UTF-8'}
		 		</td>
			</tr>-->
			{foreach from=$grouped_fields.$key item=field name=custom_fields}
				{if in_array($field.field_type, array('multiselect', 'radio', 'checkbox', 'select'))}
                    {assign var='field_value' value=$field.field_value}
                {elseif $field.field_type == 'message'}
                    {assign var='field_value' value=$field.default_value}
                {else}
                    {assign var='field_value' value=$obj_model->getFormatedValue($field)}
                {/if}
				{cycle values=["color_line_even", "color_line_odd"] assign=bgcolor_class}
				{if $field.field_type == 'attachment'}
					{continue}
				{else}
					<tr class=" {$bgcolor_class|escape:'htmlall':'UTF-8'}"><!-- removed class product from tr by skt-->
						<td class="left white"  width="70%"><!-- removed class grey bold and added white in td also changed width from 45% to 70% also removed style="margin-left:15px;" by skt-->
							<b>{$field.field_name|escape:'htmlall':'UTF-8'} :</b>
						</td>
						
						<td class="left white" width="30%"><!-- changed width to 30% from 55% also removed style="margin-left:15px;" by skt-->
							{$field_value|escape:'htmlall':'UTF-8'}
						</td>
					</tr>
				{/if}
			{/foreach}
		{/if}
	{/foreach}
</table>