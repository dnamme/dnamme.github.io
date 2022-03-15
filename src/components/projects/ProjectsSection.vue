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
              >Website</a
            >
          </div>
          <div v-if="project.github">
            <a :href="project.github" target="_blank" class="project-link"
              >GitHub repository</a
            >
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
              >Play Game</a
            >
          </div>
          <div v-if="project.github">
            <a :href="project.github" target="_blank" class="project-link"
              >GitHub repository</a
            >
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ProjectsSection",
  data() {
    return {
      web_dev_projs: [
        {
          title: "Enlistment Scheduler",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
          website: "https://dnamme.github.io/enlistment-scheduler",
          github: "https://github.com/dnamme/enlistment-scheduler",
        },
        {
          title: "TakBlue",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
          website: "https://dnamme.github.io/takblue",
          github: "https://github.com/dnamme/takblue",
        },
      ],
      game_dev_projs: [
        {
          title: "Race to Twelve",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
          github: "https://github.com/dnamme/race-to-twelve",
        },
        {
          title: "Ma10mon: CS",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
          website: "https://dnamme.github.io/math-10-integrating-project",
          github: "https://github.com/dnamme/math-10-integrating-project",
        },
        {
          title: "Slime'D",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
        },
        {
          title: "Skiula's Chamber",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
        },
        {
          title: "Sample Animation",
          desc: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto laboriosam porro voluptatibus, nobis non quidem? Reiciendis aliquid esse eveniet aliquam cum corrupti asperiores temporibus nam, voluptates consectetur dolore, sit quo.",
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
