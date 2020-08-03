<?php

class Shopware_Controllers_Frontend_CookiePanel extends \Enlight_Controller_Action
{
    public function preDispatch()
    {
        $pluginPath = $this->container->getParameter('swag_controller_example.plugin_dir');

        $config = $this->container->get('shopware.plugin.cached_config_reader')->getByPluginName($this->getName());
        die($config);

        $this->get('template')->addTemplateDir($pluginPath . '/Resources/views/');
    }
}
