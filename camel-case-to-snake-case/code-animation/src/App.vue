<script setup>
import CodeAnimator from './components/CodeAnimator.vue'
</script>

<template>
  <div class="container">
    <Suspense>
      <template #default>
        <div>
          <div class="demo-section">
            <CodeAnimator />
          </div>
        </div>
      </template>
      <template #fallback>
        <div>Loading code highlighter...</div>
      </template>
    </Suspense>
  </div>
</template>

<style scoped>
</style>
