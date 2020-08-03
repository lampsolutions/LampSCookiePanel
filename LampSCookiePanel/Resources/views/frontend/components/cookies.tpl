<script
        id="lamp-cookie-consent"
        type="application/json">
        {

            {if $lampConfig.analytics_id}
            "cookie-1": {
                "body": [
                    "<!-- Google Analytics -->\n<script>\n(function(i,s,o,g,r,a,m) { i['GoogleAnalyticsObject']=r;i[r]=i[r]||function() { \n(i[r].q=i[r].q||[]).push(arguments) } ,i[r].l=1*new Date();a=s.createElement(o),\nm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n } )(window,document,'script','https:\/\/www.google-analytics.com\/analytics.js','ga');\n\nga('create', '{$lampConfig.analytics_id}', 'auto');\nga('send', 'pageview');\n<\/script>\n<!-- End Google Analytics -->\n"
                 ]
            } {/if}
             {if $lampConfig.tag_manager_id}
              {if $lampConfig.analytics_id}, {/if}
             "cookie-2": {
                "body": [
                    "<!-- Google Tag Manager -->\n<script>(function(w,d,s,l,i) { w[l]=w[l]||[];w[l].push( { 'gtm.start':\nnew Date().getTime(),event:'gtm.js' } );var f=d.getElementsByTagName(s)[0],\nj=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=\n'https:\/\/www.googletagmanager.com\/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);\n } )(window,document,'script','dataLayer','{$lampConfig.tag_manager_id}');<\/script>\n<!-- End Google Tag Manager -->\n"
                 ]
            }
            {/if}
            {if $lampConfig.facebook_id}
                {if $lampConfig.analytics_id || $lampConfig.tag_manager_id}, {/if}
                 "cookie-3": {
                    "body": [
                        "<script>\n  !function(f,b,e,v,n,t,s)\n   { if(f.fbq)return;n=f.fbq=function() { n.callMethod?\n  n.callMethod.apply(n,arguments):n.queue.push(arguments) } ;\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';\n  n.queue=[];t=b.createElement(e);t.async=!0;\n  t.src=v;s=b.getElementsByTagName(e)[0];\n  s.parentNode.insertBefore(t,s) } (window, document,'script',\n  'https:\/\/connect.facebook.net\/en_US\/fbevents.js');\n  fbq('init', ' { {$lampConfig.facebook_id} } ');\n  fbq('track', 'PageView');\n<\/script>\n"
                     ]
                },
            {/if}

            "config" :{
                "show_impressum": "{$lampConfig.show_on_privacy}",
                "about_link": "{$lampConfig.about_link}",
                "privacy_link": "{$lampConfig.privacy_link}"
            }

}

</script>
