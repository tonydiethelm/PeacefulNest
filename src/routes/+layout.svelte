

<script>
    import Navigationmenu from '../lib/Navigationmenu.svelte';
    import Llcfooter from '../lib/Llcfooter.svelte';
    import ContactAline from '../lib/ContactAline.svelte';
    import WholeSiteCSS from '../lib/WholeSiteCSS.svelte';
</script>

<div class="layout">
    <WholeSiteCss />
    <Navigationmenu />
    <slot />
    <ContactAline />
    <Llcfooter />
</div>