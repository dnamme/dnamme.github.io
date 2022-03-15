<template>
  <div id="achievements" class="main">
    <h1 class="sticky-title">
      I <span class="h1 accented-heading">compete</span>.
    </h1>

    <div id="achievements-wrapper">
      <div
        v-for="(achievement, index) in achievements"
        :key="`achievement-${index}`"
        class="achievement-wrapper"
      >
        <img src="https://via.placeholder.com/400x300" />
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "AchievementsSection",
  data() {
    return {
      achievements: [{}, {}, {}, {}],
    };
  },
};
</script>

<style scoped>
#achievements {
  max-width: 1440px;
  min-height: unset !important;

  padding: 0 0 128px;
}

.sticky-title {
  position: sticky;
  top: 0;

  margin: 0 0 32px 64px;
}

#achievements-wrapper {
  width: 1008px;

  margin: 0 auto;

  display: grid;
  grid-template-columns: repeat(2, 1fr);

  column-gap: 80px;
  row-gap: 48px;
}

.achievement-wrapper > img {
  width: 100%;
}
</style>
