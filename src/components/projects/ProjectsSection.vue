<template>
  <div id="projects" class="main">
    <div id="webdev">
      <h2 class="sticky-title">
        I make
        <span class="h2 accented-heading">websites</span>.
      </h2>

      <div
        v-for="(project, index) in web_dev_projs"
        :key="`web-project-${index}`"
        class="webdev-project-wrapper"
      >
        <img src="https://via.placeholder.com/1600x900" />

        <div class="webdev-project-details-wrapper">
          <h6 class="project-title">{{ project.title }}</h6>
          <p class="project-description">{{ project.desc }}</p>

          <div v-if="project.website">
            <a :href="project.website" target="_blank" class="project-link"
              >Website <ExternalLink :color="'#1167B1'"
            /></a>
          </div>
          <div v-if="project.github">
            <a :href="project.github" target="_blank" class="project-link"
              >GitHub repository <ExternalLink :color="'#1167B1'"
            /></a>
          </div>
        </div>
      </div>
    </div>

    <div id="gamedev" class="main">
      <h2 class="sticky-title">
        I create <span class="h2 accented-heading">games</span>.
      </h2>

      <div
        v-for="(project, index) in game_dev_projs"
        :key="`game-project-${index}`"
        class="gamedev-project-wrapper"
      >
        <img src="https://via.placeholder.com/400x300" />

        <div class="gamedev-project-details-wrapper">
          <img src="https://via.placeholder.com/1600x900" />

          <h6 class="project-title">{{ project.title }}</h6>
          <p class="project-description">{{ project.desc }}</p>

          <div v-if="project.website">
            <a :href="project.website" target="_blank" class="project-link"
              >Play Game <ExternalLink :color="'#1167B1'"
            /></a>
          </div>
          <div v-if="project.github">
            <a :href="project.github" target="_blank" class="project-link"
              >GitHub repository <ExternalLink :color="'#1167B1'"
            /></a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ExternalLink from "./../general/ExternalLink.vue";

export default {
  name: "ProjectsSection",
  components: { ExternalLink },
  data() {
    return {
      web_dev_projs: [
        {
          title: "Enlistment Scheduler",
          desc: "This web application makes enlistment and scheduling a lot easier for Ateneo students by showing a preview of the user's schedule as they enter and choose classes.",
          website: "https://dnamme.github.io/enlistment-scheduler",
          github: "https://github.com/dnamme/enlistment-scheduler",
        },
        {
          title: "TakBlue",
          desc: "TakBlue is a small application for Ateneo students that calculates the distance and the time that it takes to go from one class to another.",
          website: "https://dnamme.github.io/takblue",
          github: "https://github.com/dnamme/takblue",
        },
      ],
      game_dev_projs: [
        {
          title: "Race to Twelve",
          desc: "The player and our smart AI each take turns stacking numbers from one to three. The first one to get a total of twelve wins the round, for a total of three rounds.",
          github: "https://github.com/dnamme/race-to-twelve",
        },
        {
          title: "Ma10mon: CS",
          desc: "Set in an alternate universe, three daring students try to defeat an evil being.",
          website: "https://dnamme.github.io/math-10-integrating-project",
          github: "https://github.com/dnamme/math-10-integrating-project",
        },
        {
          title: "Slime'D",
          desc: "As a gravity-defying slimeball, the player must try to sruvive for as long as they can while avoiding spikes. This was made using Arduino.",
        },
        {
          title: "Skiula's Chamber",
          desc: "Skiula, the evil skeleton boss, has trapped these players inside his castle. Players must survive for a total of three minutes in order to win. Play singleplayer or win together with friends!",
        },
        {
          title: "Sample Animation",
          desc: "This features the day and night cycle of Japan's Mt. Fuji in all its glory.",
        },
      ],
    };
  },
};
</script>

<style scoped>
#projects {
  max-width: 1440px;
}

.sticky-title {
  position: sticky;
  top: 0;

  margin: 0 0 32px 64px;
}

.project-link {
  color: var(--darker-blue);
  text-decoration: none;
}

#webdev {
  padding: 0 0 128px;
}

.webdev-project-wrapper {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-template-areas: "img img img txt txt";
  column-gap: 32px;

  margin: 0 100px 48px;
}

.webdev-project-wrapper:last-child {
  margin-bottom: 0;
}

.webdev-project-wrapper > img {
  width: 100%;
  grid-area: img;
}

.webdev-project-details-wrapper {
  grid-area: txt;
}

.webdev-project-details-wrapper > .project-title {
  margin: 0 0 16px;
}

.webdev-project-details-wrapper > .project-description {
  margin: 0 0 32px;
}

#gamedev {
  padding: 0 0 128px;
}

.gamedev-project-wrapper {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-areas: "img txt txt";
  column-gap: 100px;

  margin: 0 100px 48px;
}

.gamedev-project-wrapper:last-child {
  margin-bottom: 0;
}

.gamedev-project-wrapper > img {
  width: 100%;
  grid-area: img;
}

.gamedev-project-details-wrapper {
  grid-area: txt;
}

.gamedev-project-details-wrapper > img {
  width: 100%;

  margin: 0 0 32px;
}

.gamedev-project-details-wrapper > .project-title {
  margin: 0 0 16px;
}

.gamedev-project-details-wrapper > .project-description {
  margin: 0 0 32px;
}
</style>
