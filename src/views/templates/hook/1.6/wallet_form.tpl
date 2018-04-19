{**
* Module is prohibited to sales! Violation of this condition leads to the deprivation of the license!
*
* @author    Yandex.Money <cms@yamoney.ru>
* @copyright © 2015-2017 NBCO Yandex.Money LLC
* @license   https://money.yandex.ru/doc.xml?id=527052
*
* @category  Front Office Features
* @package   Yandex Payment Solution
*}

<div class="row">
    <div class="col-xs-12 col-md-6">
        <p class="payment_module">
            <a href="{$link->getModuleLink('yandexmodule', 'redirect', ['type' => 'wallet'])|escape:'quotes':'UTF-8'}" title="{l s='Оплата через Яндекс кошелёк' mod='yandexmodule'}" class="yandex_money_yandex_money yandex_money_payment">
                {l s='Оплата через Яндекс кошелёк' mod='yandexmodule'}
            </a>
        </p>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-md-6">
        <p class="payment_module">
            <a href="{$link->getModuleLink('yandexmodule', 'redirect', ['type' => 'card'])|escape:'quotes':'UTF-8'}" title="{l s='Оплата банковской картой' mod='yandexmodule'}" class="yandex_money_bank_card yandex_money_payment">
                {l s='Оплата банковской картой' mod='yandexmodule'}
            </a>
        </p>
    </div>
</div>