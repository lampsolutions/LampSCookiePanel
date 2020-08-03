<?php

namespace LampSCookiePanel;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context\InstallContext;
use Doctrine\Common\Collections\ArrayCollection;
use Shopware\Components\Theme\LessDefinition;

class LampSCookiePanel extends Plugin
{

    public static function getSubscribedEvents()
    {
        return [
            'Theme_Compiler_Collect_Plugin_Javascript' => 'addJsFiles',
            'Theme_Compiler_Collect_Plugin_Less' => 'addLessFiles'
        ];
    }



    public function addJsFiles(\Enlight_Event_EventArgs $args)
    {
        $version = Shopware()->Config()->version;
        if(version_compare($version, '5.2.7', '<')) {
            $jsFiles = array(__DIR__ . '/Resources/frontend/js/cookiepanek.js');
            return new ArrayCollection($jsFiles);
        }
    }

    public function addLessFiles()
    {
        $less = new LessDefinition(
            array(),
            array(__DIR__ . '/Resources//frontend/less/all.less'),
            __DIR__
        );
        return new ArrayCollection([$less]);
    }


}
