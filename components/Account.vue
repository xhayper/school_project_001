<template>
    <div>
        <div>
            Hello! You're signed in!
        </div>

        <div>
            <button type="button" class="button block" @click="signOut">
                Sign Out
            </button>
        </div>
    </div>
</template>

<script setup>
const loading = ref(false)

const supabaseClient = useSupabaseClient();
async function signOut() {
    try {
        loading.value = true
        let { error } = await supabaseClient.auth.signOut()
        if (error) throw error
    } catch (error) {
        alert(error.message)
    } finally {
        loading.value = false
    }
}
</script>