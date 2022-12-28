<template>
  <div id="achievements" class="main">
    <h2 class="sticky-title">
      I <span class="h2 accented-heading">compete</span>.
    </h2>

    <div id="achievements-wrapper">
      <div
        v-for="(achievement, index) in achievements"
        :key="`achievement-${index}`"
        class="achievement-wrapper"
      >
        <a
          v-if="achievement.website"
          :href="achievement.website"
          target="_blank"
          class="achievement-link"
        >
          <h6 class="achievement-title">
            {{ achievement.title }} <ExternalLink color="#03254c" :size="24" />
          </h6>
        </a>

        <h6 class="achievement-title" v-else>{{ achievement.title }}</h6>

        <p class="achievement-team" v-if="achievement.team">
          Team <span style="font-style: italic">{{ achievement.team }}</span>
        </p>
        <p class="achievement-position">{{ achievement.position }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import ExternalLink from "./../general/ExternalLink.vue";

export default {
  name: "AchievementsSection",
  components: { ExternalLink },
  data() {
    return {
      achievements: [
        {
          title: "2022 ICPC Asia Manila Regionals",
          website: "http://penoy.admu.edu.ph/domjudge/",
          team: "heappopotamus",
          position: "14th overall",
        },
        {
          title: "2021 ICPC Asia Jakarta Regionals",
          website: "https://competition.binus.ac.id/contest/public",
          team: "dudeparecode",
          position: "39th overall, 1st in PH",
        },
        {
          title: "ReactJS x Minify 2021",
          website:
            "https://www.meetup.com/ReactJS-Philippines/events/279711378/",
          position: "9th place",
        },
        {
          title: "CompSAt Blue Hacks 2021",
          website: "https://www.facebook.com/BlueHacksAdMU",
          team: "FECK",
          position: "Finalist",
        },
        {
          title: "Google Code Jam 2021",
          website: "https://codingcompetitions.withgoogle.com/codejam/",
          position: "Qualifier",
        },
      ],
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
  margin: 0 0 32px;
}

#achievements-wrapper {
  width: 100%;
  max-width: 1008px;

  margin: 0 auto;

  display: grid;
  grid-template-columns: repeat(2, 1fr);

  column-gap: 80px;
  row-gap: 48px;
}

.achievement-wrapper {
  width: 100%;

  padding: 32px;

  background-color: var(--lighter-blue);

  border-radius: 16px;

  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
}

.achievement-title {
  margin: 0 0 16px;

  text-align: center;
}

.achievement-link {
  text-decoration: none;
}

.achievement-link:hover {
  text-decoration: underline;
}

.achievement-team {
  margin: 0 0 24px;

  text-align: center;
  font-weight: bold;
}

.achievement-position {
  margin: 0;

  text-align: center;
}

@media screen and (max-width: 1200px) {
  #achievements {
    padding-bottom: 96px;
  }

  .sticky-title {
    padding-left: 48px;
    margin-bottom: 24px;
  }

  #achievements-wrapper {
    column-gap: 64px;

    padding: 0 48px;
  }
}

@media screen and (max-width: 992px) {
  #achievements {
    padding-bottom: 80px;
  }

  .sticky-title {
    padding-left: 32px;
    margin-bottom: 16px;
  }
}

@media screen and (max-width: 768px) {
  #achievements {
    padding-bottom: 72px;
  }

  .sticky-title {
    padding-left: 24px;
    margin-bottom: 8px;
  }

  #achievements-wrapper {
    padding: 0 32px;

    grid-template-columns: 1fr;
    row-gap: 24px;
  }
}

@media screen and (max-width: 576px) {
  #achievements {
    padding-bottom: 64px;
  }

  .sticky-title {
    padding-left: 16px;
    margin-bottom: 0;
  }

  #achievements-wrapper {
    padding: 0 24px;
  }
}
</style>
