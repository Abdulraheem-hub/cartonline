{extends file='parent:checkout/_partials/cart-summary.tpl'}
{block name='cart_summary_products'}
	 <div class="cart-summary-products">

                <div>{$cart.summary_string}
                    <a href="#" data-toggle="collapse" class="text-muted pull-right" data-target="#cart-summary-product-list">
                        {l s='show details' d='Shop.Theme.Actions'} <i class="fa fa-angle-down" aria-hidden="false"></i>
						<!--added aria-hidden=false instead of true by skt-->
                    </a>
                </div>

                {block name='cart_summary_product_list'}
                    <div class="collapse show" id="cart-summary-product-list"><!--added show class after collapse by skt-->
                        <ul class="media-list">
                            {foreach from=$cart.products item=product}
                                <li class="media cart-summary-product">{include file='checkout/_partials/cart-summary-product-line.tpl' product=$product}</li>
                            {/foreach}
                        </ul>
                        <div class="text-right"><a href="{url entity=cart params=['action' => 'show']}"><span class="step-edit"><i class="fa fa-pencil" aria-hidden="true"></i> {l s='edit' d='Shop.Theme.Actions'}</span></a></div>
                    </div>
                {/block}
     </div>
{/block}