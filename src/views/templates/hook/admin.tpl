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
{if $update_status}
<div class="alert alert-warning">{l s='У вас неактуальная версия модуля. Вы можете' mod='yandexmodule'}
    <a target='_blank' href='https://github.com/yandex-money/yandex-money-cms-prestashop/releases'>
        {l s='загрузить и установить' mod='yandexmodule'}</a> {l s='новую' mod='yandexmodule'}
    {$update_status|escape:'htmlall':'UTF-8'}</div>
{/if}
<div id="tabs" class="yan_tabs">
    <p>Работая с модулем, вы автоматически соглашаетесь с
        <a href="https://money.yandex.ru/doc.xml?id=527052" target="_blank"> условиями его использования </a>.</p>
    <p>Версия модуля <span id='ya_version'>{$ya_version|escape:'htmlall':'UTF-8'}</span></p>
    <ul>
        <li><a href="#moneyorg">{l s='Yandex.Kassa' mod='yandexmodule'}</a></li>
        <li><a href="#money">{l s='Yandex.Money' mod='yandexmodule'}</a></li>
        <li><a href="#billing">{l s='Yandex.Billing' mod='yandexmodule'}</a></li>
        <li><a href="#metrika">{l s='Yandex.Metrics' mod='yandexmodule'}</a></li>
        <li><a href="#market">{l s='Yandex.Market' mod='yandexmodule'}</a></li>
        <li><a href="#marketp">{l s='Orders on market' mod='yandexmodule'}</a></li>
    </ul>
    <div id="money">
        <div class="errors">{$p2p_status|escape:'quotes':'UTF-8'}</div>
        <p>Для работы с модулем нужно <a href='https://money.yandex.ru/new' target='_blank'>открыть кошелек</a> на Яндексе и <a href='https://sp-money.yandex.ru/myservices/new.xml' target='_blank'>зарегистрировать приложение</a> на сайте Яндекс.Денег</p>
        {$money_p2p|escape:'quotes':'UTF-8'}
    </div>
    <div id="billing">
        <div class="errors">{$billing_status|escape:'quotes':'UTF-8'}</div>
        <p>{l s='This is a payment form for your site. It allows for accepting payments to your company account from cards and Yandex.Money e-wallets without a contract. To set it up, you need to provide the Yandex.Billing identifier: we will send it via email after you <a href="https://money.yandex.ru/fastpay/">create a form in construction kit</a>.' mod='yandexmodule'}</p>
        {$billing_form|escape:'quotes':'UTF-8'}
    </div>
    <div id="moneyorg">
        <div class="errors">{$org_status|escape:'quotes':'UTF-8'}</div>
        <p>Для работы с модулем нужно подключить магазин к <a target="_blank" href="https://kassa.yandex.ru/">Яндекс.Кассе</a>.</p>
        {$money_org|escape:'quotes':'UTF-8'}
    </div>
    <div id="metrika">
        <div class="errors">{$metrika_status|escape:'quotes':'UTF-8'}</div>
        {$money_metrika|escape:'quotes':'UTF-8'}
        <div id="iframe_container"></div>
    </div>
    <div id="market">
        <div class="errors">{$market_status|escape:'quotes':'UTF-8'}</div>
        {$money_market|escape:'quotes':'UTF-8'}
    </div>
    <div id="marketp">
        <div class="errors">{$market_orders_status|escape:'quotes':'UTF-8'}</div>
        {$money_marketp|escape:'quotes':'UTF-8'}
    </div>
</div>
{literal}
<script type="text/javascript">
(function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter27737730 = new Ya.Metrika({ id:27737730 }); } catch(e) { } }); var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () { n.parentNode.insertBefore(s, n); }; s.type = "text/javascript"; s.async = true; s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js"; if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); } })(document, window, "yandex_metrika_callbacks");</script><noscript><div><img src="//mc.yandex.ru/watch/27737730" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
{/literal}
<style>
    .yan_tabs a {
        color:#00aff0 ;
    }
</style>
<script type="text/javascript"><!--

jQuery(document).ready(function () {
    var options = {
        YA_BILLING_ACTIVE: {},
        YA_WALLET_ACTIVE: {},
        YA_KASSA_ACTIVE: {}
    };

    var trueInputs = [];
    var falseInputs = [];
    for (var name in options) {
        var radio = jQuery('input[name="' + name + '"]');
        for (var i = 0; i < radio.length; i++) {
            if (radio[i].value == '1') {
                trueInputs.push(radio[i]);
            } else {
                falseInputs.push(radio[i]);
            }
        }
        radio.bind('change', function (e) {
            if (e.target.value == '1') {
                for (var i = 0; i < trueInputs.length; i++) {
                    if (trueInputs[i] != e.target) {
                        trueInputs[i].checked = false;
                        falseInputs[i].checked = true;
                    }
                }
            }
        });
    }
});

</script>