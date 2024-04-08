

<script>
    import Navigationmenu from '../lib/Navigationmenu.svelte';
    import Llcfooter from '../lib/Llcfooter.svelte';
    import Contactaline from '../lib/Contactaline.svelte';
</script>

<div class="layout">
    <Navigationmenu />
    <slot />
    <Contactaline />
    <Llcfooter />
</div>