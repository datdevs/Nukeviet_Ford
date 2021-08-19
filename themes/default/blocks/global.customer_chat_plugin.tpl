<!-- BEGIN: main -->
<div id="fb-root"></div>
<div class="fb-customerchat"
  page_id="{PAGE_ID}"
  <!-- BEGIN: theme_color -->
  theme_color="{THEME_COLOR}"
  <!-- END: theme_color -->
  <!-- BEGIN: logged_in_greeting -->
  logged_in_greeting="{LOGGED_IN_GREETING}"
  <!-- END: logged_in_greeting -->
  <!-- BEGIN: logged_out_greeting -->
  logged_out_greeting="{LOGGED_OUT_GREETING}"
  <!-- END: logged_out_greeting -->
>
</div>
<script type="text/javascript">
  const loadScriptsTimer=setTimeout(loadScripts,5e3),userInteractionEvents=["mouseover","keydown","touchstart","touchmove","wheel"];function triggerScriptLoader(){loadScripts(),clearTimeout(loadScriptsTimer),userInteractionEvents.forEach(function(e){window.removeEventListener(e,triggerScriptLoader,{passive:!0})})}function loadScripts(){var e,t,r,n;768<=screen.width&&(window.fbAsyncInit=function(){FB.init({xfbml:!0,version:"v11.0"})},e=document,t="script",r="facebook-jssdk",n=e.getElementsByTagName(t)[0],e.getElementById(r)||((t=e.createElement(t)).id=r,t.src="https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js",n.parentNode.insertBefore(t,n)))}userInteractionEvents.forEach(function(e){window.addEventListener(e,triggerScriptLoader,{passive:!0})});
</script>
<!-- END: main -->
<script type="text/javascript">
  const loadScriptsTimer = setTimeout(loadScripts, 5 * 1000);
  const userInteractionEvents = ["mouseover", "keydown", "touchstart", "touchmove", "wheel"];
  userInteractionEvents.forEach(function (event) {
    window.addEventListener(event, triggerScriptLoader, {
      passive: !0
    })
  });

  function triggerScriptLoader() {
    loadScripts();
    clearTimeout(loadScriptsTimer);
    userInteractionEvents.forEach(function (event) {
      window.removeEventListener(event, triggerScriptLoader, {
        passive: !0
      })
    })
  }

  function loadScripts() {
    const sw=screen.width;768<=sw&&(window.fbAsyncInit=function(){FB.init({xfbml:!0,version:"v11.0"})},function(e,t,n){var s=e.getElementsByTagName(t)[0];e.getElementById(n)||((t=e.createElement(t)).id=n,t.src="https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js",s.parentNode.insertBefore(t,s))}(document,"script","facebook-jssdk"))
  }
</script>
