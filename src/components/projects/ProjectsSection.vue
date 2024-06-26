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
        <div class="project-img-wrapper" v-if="project.videos"></div>
        <img
          :src="require(`@/assets/${project.static_img}`)"
          class="project-img-wrapper"
          v-else
        />

        <div class="webdev-project-details-wrapper">
          <h6 class="project-title">{{ project.title }}</h6>
          <p class="project-description">{{ project.desc }}</p>

          <div v-if="project.website">
            <a :href="project.website" target="_blank" class="project-link"
              >Website <ExternalLink color="#1167B1"
            /></a>
          </div>
          <div v-if="project.github">
            <a :href="project.github" target="_blank" class="project-link"
              >GitHub repository <ExternalLink color="#1167B1"
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
        <video
          v-if="project.video"
          class="project-img-wrapper"
          autoplay
          loop
          muted
        >
          <source
            :src="require(`@/assets/${project.video}`)"
            type="video/mp4"
          />
        </video>
        <img
          :src="require(`@/assets/${project.static_img}`)"
          class="project-img-wrapper"
          :style="
            project.static_img_style !== null ? project.static_img_style : {}
          "
          v-else
        />

        <div class="gamedev-project-details-wrapper">
          <!-- <img src="https://via.placeholder.com/1600x900" /> -->

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
      update_video: null,
      web_dev_projs: [
        {
          title: "The GUIDON Archives",
          desc: "The Digital Archives is done in collaboration with Ateneo's office for archiving (University Archives) and is the publication's very own initiative to digitize and compile all of its published issues since 1929 into a singular website. The project was made using ReactJS on top of a Headless WordPress CMS.",
          static_img: "webdev/digital_archives.png",
          website: "https://archives.theguidon.com",
        },
        {
          title: "Vantage Magazine",
          desc: "A complete redesign of the magazine counterpart of The GUIDON. The project uses WordPress as its CMS and was finished in just 1 week.",
          static_img: "webdev/vantmag.png",
          website: "https://vantage.theguidon.com",
        },
        {
          title: "The GUIDON Interactive",
          desc: "A complete redesign of The GUIDON Interactive, the repository of interactive and immersive articles of the publication. Internal processes were also reformed, with Google Sheets being retired and the release of a newly developed headless WordPress CMS for its databases.",
          static_img: "webdev/tgdn_interactive.png",
          website: "https://interactive.theguidon.com",
        },
        {
          title: "The GUIDON Main",
          desc: "A complete revamp and overhaul of the main website of The GUIDON. This project uses WordPress and was finished in under 1.5 months.",
          static_img: "webdev/tgdn_main.png",
          website: "https://theguidon.com",
        },
        {
          title: "TALAB 2023",
          desc: "TALAB is an annual event of the Ateneo de Manila University filled with talks, workshops, and events.",
          static_img: "webdev/talab-2023.png",
          website: "https://ateneotalab.online",
        },
        {
          title: "EpiMetrics Inc.",
          desc: "A freelance project wherein the old website had to be recreated as a brand new WordPress website. The back-end had to be restructured and the theme was created from scratch.",
          static_img: "webdev/epimetrics.png",
          website: "https://epimetrics.com.ph",
        },
        {
          title: "Year-End Gallery",
          desc: "The Year-End Gallery revisits the various events experienced by the Ateneo community during the A.Y. 2022-2023, following the return of onsite classes.",
          static_img: "webdev/year_end_gallery.png",
          website: "https://interactive.theguidon.com/2023/05/year-end-gallery",
        },
        {
          title: "Dead End",
          desc: "Dead End is an interactive article that tackles the hardships of commuters in their day to day lives in an attempt to magnify their voices.",
          static_img: "webdev/dead_end.png",
          website: "https://interactive.theguidon.com/2023/05/dead-end",
        },
        {
          title: "UAAP Season 85 Primer Volume 1",
          desc: "The digital version of the UAAP Season 85 Primer Volume 1 published under The GUIDON.",
          static_img: "webdev/uaap_85_primer_volume_1.png",
          website: "https://tgdn.co/UAAP85PrimerVolume1",
        },
        {
          title: "A House Divided",
          desc: "An interactive article that features multiple individuals across different sectors and their opinions on President Marcos Jr. and his first 100 days in office.",
          static_img: "webdev/a_house_divided.png",
          website: "https://interactive.theguidon.com/2022/10/a-house-divided",
        },
        {
          title: "Flood Guard Calbayog",
          desc: "A web application and proof-of-concept for the LGU of Calbayog, Samar, that efficiently calculates flooding risks and creates respective heatmaps.",
          static_img: "webdev/flood_guard_calbayog.png",
        },
        // {
        //   title: "Enlistment Scheduler",
        //   desc: "This web application makes enlistment and scheduling a lot easier for Ateneo students by showing a preview of the user's schedule as they enter and choose classes.",
        //   static_img: "webdev/enlistment_scheduler.png",
        //   website: "https://dnamme.github.io/enlistment-scheduler",
        //   github: "https://github.com/dnamme/enlistment-scheduler",
        // },
        // {
        //   title: "TakBlue",
        //   desc: "TakBlue is a small application for Ateneo students that calculates the distance and the time that it takes to go from one class to another.",
        //   static_img: "webdev/takblue.png",
        //   website: "https://dnamme.github.io/takblue",
        //   github: "https://github.com/dnamme/takblue",
        // },
      ],
      game_dev_projs: [
        {
          title: "Ma10mon: CS",
          desc: "Set in an alternate universe, three daring students try to defeat an evil being.",
          static_img: "gamedev/ma10mon-cs.jpg",
          static_img_style: {
            maxHeight: "256px",
          },
          video: "gamedev/ma10mon-cs.mp4",
          website: "https://dnamme.github.io/math-10-integrating-project",
          github: "https://github.com/dnamme/math-10-integrating-project",
        },
        {
          title: "Race to Twelve",
          desc: "The player and our smart AI each take turns stacking numbers from one to three. The first one to get a total of twelve wins the round, for a total of three rounds.",
          static_img: "gamedev/race-to-twelve.png",
          github: "https://github.com/dnamme/race-to-twelve",
        },
        {
          title: "Slime'D",
          desc: "As a gravity-defying slimeball, the player must try to survive for as long as they can while avoiding spikes. This was made using Arduino.",
          static_img: "gamedev/slimed.jpg",
          static_img_style: {
            maxHeight: "240px",
            objectPosition: "0 -12px",
          },
        },
        {
          title: "Skiula's Chamber",
          desc: "Skiula, the evil skeleton boss, has trapped these players inside his castle. Players must survive for a total of three minutes in order to win. Play singleplayer or win together with friends!",
          static_img: "gamedev/skiulas-chamber.png",
          video: "gamedev/skiulas-chamber.mp4",
        },
        {
          title: "Sample Animation",
          desc: "This features the day and night cycle of Japan's Mt. Fuji in all its glory.",
          static_img: "gamedev/fuji.png",
          video: "gamedev/fuji.mp4",
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
  margin: 0;
}

.project-link {
  color: var(--darker-blue);
  text-decoration: none;
}

.project-link:hover {
  text-decoration: underline;
}

.project-img-wrapper {
  border-radius: 16px;
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

.webdev-project-wrapper .project-img-wrapper {
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

.gamedev-project-wrapper .project-img-wrapper {
  width: 100%;

  object-fit: cover;
  object-position: 0 top;

  grid-area: img;
}

.gamedev-project-wrapper .project-img-wrapper > * {
  width: 100%;
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

@media screen and (max-width: 1200px) {
  .sticky-title {
    padding-left: 48px;
  }

  #webdev {
    padding-bottom: 96px;
  }

  .webdev-project-wrapper {
    margin-left: 64px;
    margin-right: 64px;
  }

  #gamedev {
    padding-bottom: 96px;
  }

  .gamedev-project-wrapper {
    margin-left: 64px;
    margin-right: 64px;

    column-gap: 64px;
  }
}

@media screen and (max-width: 992px) {
  .sticky-title {
    padding-left: 32px;
  }

  #webdev {
    padding-bottom: 80px;
  }

  .webdev-project-wrapper {
    margin-left: 48px;
    margin-right: 48px;

    grid-template-columns: 1fr;
    grid-template-areas:
      "img"
      "txt";
    row-gap: 32px;
  }

  #gamedev {
    padding-bottom: 80px;
  }

  .gamedev-project-wrapper {
    margin-left: 48px;
    margin-right: 48px;

    column-gap: 32px;
  }

  .gamedev-project-wrapper .project-img-wrapper {
    object-position: unset !important;
    max-height: unset !important;
  }
}

@media screen and (max-width: 768px) {
  .sticky-title {
    padding-left: 24px;
  }

  #webdev {
    padding-bottom: 72px;
  }

  .webdev-project-wrapper {
    margin-left: 32px;
    margin-right: 32px;
  }

  #gamedev {
    padding-bottom: 72px;
  }

  .gamedev-project-wrapper {
    margin-left: 32px;
    margin-right: 32px;

    grid-template-columns: 1fr;
    grid-template-areas:
      "img"
      "txt";
    row-gap: 32px;
  }
}

@media screen and (max-width: 576px) {
  .sticky-title {
    padding-left: 16px;
  }

  #webdev {
    padding-bottom: 64px;
  }

  .webdev-project-wrapper {
    margin-left: 24px;
    margin-right: 24px;
  }

  #gamedev {
    padding-bottom: 64px;
  }

  .gamedev-project-wrapper {
    margin-left: 24px;
    margin-right: 24px;
  }
}
</style>
