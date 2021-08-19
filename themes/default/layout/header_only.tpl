<!DOCTYPE html>
<html lang="{LANG.Content_Language}" xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
<head>
<title>{THEME_PAGE_TITLE}</title>
<!-- BEGIN: metatags --><meta {THEME_META_TAGS.name}="{THEME_META_TAGS.value}" content="{THEME_META_TAGS.content}"><!-- END: metatags -->
<link rel="shortcut icon" href="{SITE_FAVICON}">
<!-- BEGIN: links -->
<link<!-- BEGIN: attr --> {LINKS.key}<!-- BEGIN: val -->="{LINKS.value}"<!-- END: val --><!-- END: attr -->>
<!-- END: links -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}themes/{TEMPLATE}/app/build/g.css">
<!-- BEGIN: js -->
<script<!-- BEGIN: ext --> src="{JS_SRC}"<!-- END: ext -->><!-- BEGIN: int -->{JS_CONTENT}<!-- END: int --></script>
<!-- END: js -->
<!-- BEGIN: script -->
<script src="{script_src}"></script>
<!-- END: script -->
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "url": "{NV_MY_DOMAIN}",
  "logo": "{NV_MY_DOMAIN}{LOGO_SRC}"
}
</script>
<!-- BEGIN: styles -->
<!-- BEGIN: i -->
<style>
{FILE "../app/build/i.css"}
</style>
<!-- END: i -->
<!-- BEGIN: c -->
<style>
{FILE "../app/build/c.css"}
</style>
<!-- END: c -->
<!-- BEGIN: n -->
<style>
{FILE "../app/build/n.css"}
</style>
<!-- END: n -->
<!-- BEGIN: p -->
<style>
{FILE "../app/build/p.css"}
</style>
<!-- END: p -->
<!-- BEGIN: s -->
<style>
{FILE "../app/build/s.css"}
</style>
<!-- END: s -->
<!-- END: styles -->
</head>
<body>
<div class="fnt-wrapper">