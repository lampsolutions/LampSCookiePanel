<style>
    {$lampConfig.custom_css}
</style>
<div class="tx-lamp-cookie-consent">

    <div class="lamp-cookie-panel" data-lamp-cookie-panel="1">
        <div id="cookie-hint-main">
            <div class="cookie-header">
                {if $lampConfig.logo!=""}
                    <img src="{$lampConfig.logo}" alt="{$lampConfig.title}" title="">
                    <br>
                    <br>
                {/if}
                <h3>{$lampConfig.title}</h3>
            </div>
            {$lampConfig.titletext}

            <div class="cookie-panel__selection">
                <form>
                    <div class="cookie-panel__checkbox-wrap">
                        <input class="cookie-panel__checkbox cookie-panel__checkbox--state-inactiv"
                               autocomplete="off" data-lamp-cookie-panel-grp="1"
                               id="group-1" type="checkbox"
                               checked="1"
                               data-lamp-cookie-panel-essential="1"
                               disabled="disabled"
                               value="group-1">
                        <label for="group-1">{$lampConfig.grp1}</label>
                    </div>
                    <div class="cookie-panel__checkbox-wrap">
                        <input class="cookie-panel__checkbox " autocomplete="off" data-lamp-cookie-panel-grp="2" id="group-2" type="checkbox" value="group-2">
                        <label for="group-2">{$lampConfig.grp2}</label>
                    </div>
                    <div class="cookie-panel__checkbox-wrap">
                        <input class="cookie-panel__checkbox " autocomplete="off" data-lamp-cookie-panel-grp="3" id="group-3" type="checkbox" value="group-3">
                        <label for="group-3">{$lampConfig.grp3}</label>
                    </div>

                </form>
            </div>
            <div class="cookie-main">
                <div class="cookie-panel__description">
                </div>
                <div class="cookie-panel__control">
                    <button data-lamp-cookie-panel-save="all" class="cookie-blue-btn cookie-panel__button cookie-panel__button--color--green">Alle akzeptieren</button>
                    <br>
                    <button data-lamp-cookie-panel-save="save" class="cookie-white-btn cookie-panel__button">Speichern</button>
                </div>
               <!-- <div class="individuell">
                    Individuelle Datenschutzeinstellungen
                </div>-->

                <div class="cookie-panel__link">
                    <a href="{$lampConfig.privacy_link}">Cookie-Details</a> |
                    <a href="{$lampConfig.privacy_link}">Datenschutzerklärung</a>  |
                    <a href="{$lampConfig.about_link}">Impressum</a>
                </div>

            </div>
        </div>
        <div class="cookie-details">
            {include 'frontend/components/details.tpl' }
        </div>

        <div class="brand">
            <div class="inner">
            <img src="/custom/plugins/LampSCookiePanel/plugin.png" alt="Cookie Panel" title="Cookie Panel">
            <p>Cookie Panel</p>
            </div>
        </div>

        {include 'frontend/components/cookies.tpl' }



    </div>
</div>