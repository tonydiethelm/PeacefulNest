

<script>
    import Navigationmenu from '../lib/Navigationmenu.svelte';
    import Bottombar from '../lib/Bottombar.svelte';
    import Head from '../lib/head.svelte';
</script>

<div class="layout">
    <Head />
    <Navigationmenu />
    <slot />
    <Bottombar />
</div>