<template>
  <div id="experience" class="main">
    <h2 class="sticky-title">
      ... <span class="h2 accented-heading">among other things</span>.
    </h2>

    <div id="experiences-wrapper">
      <div
        v-for="(experience, index) in experiences"
        :key="`experience-${index}`"
        class="experience-card"
      >
        <h6 class="exp-title">{{ experience.title }}</h6>
        <p class="exp-details">
          <a
            v-if="experience.company_website"
            class="exp-company"
            :href="experience.company_website"
            target="_blank"
            >{{ experience.company }} <ExternalLink color="#03254c"
          /></a>
          <span v-else> {{ experience.company }} </span>
          &bull;
          {{ experience.date }}
        </p>

        <p class="exp-description">{{ experience.desc }}</p>
      </div>
    </div>
  </div>
</template>

<script>
import ExternalLink from "./../general/ExternalLink.vue";

export default {
  name: "ExperienceSection",
  components: { ExternalLink },
  data() {
    return {
      experiences: [
        {
          title: "Digital Development Editor for Technology",
          company: "The GUIDON",
          company_website: "https://theguidon.com",
          date: "Since June 2022",
          desc: "Manages the staffers who are in charge of creating interactive articles for The GUIDON. The Editor for Technology is also responsible for managing and collaborating with other staffs, potentially building projects that help the publiclation overall.",
        },
        {
          title: "Digital Development Staffer, Developer",
          company: "The GUIDON",
          company_website: "https://theguidon.com",
          date: "October 2021 to May 2022",
          desc: "Creates interactive articles under the organization using modern frameworks.",
        },
        {
          title: "Associate Vice President for Development Projects",
          company: "Computer Society of the Ateneo",
          company_website: "https://compsat.org",
          date: "Since August 2021",
          desc: "Manages and oversees the teams who are assigned to client projects, and manages the website of the organization",
        },
        {
          title: "Senior Developer",
          company: "Google Developer Student Clubs Loyola",
          company_website: "https://www.gdscloyola.org/",
          date: "Since August 2020",
          desc: "Created a mobile application to help students in their overall productivity needs.",
        },
      ],
    };
  },
};
</script>

<style scoped>
#experience {
  max-width: 1440px;

  padding: 0 0 128px;
}

.sticky-title {
  margin: 0 0 32px;
}

.experience-card {
  border-left: 8px solid var(--darker-blue);

  width: 100%;
  max-width: 896px;

  padding: 8px 64px 24px 32px;
  margin: 0 auto 32px;

  background-color: var(--lighter-blue);
}

.experience-card:last-child {
  margin-bottom: 0;
}

.experience-card .exp-title {
  margin: 0 0 8px;
}

.experience-card .exp-details {
  margin: 0 0 24px;

  font-weight: 500;
}

.experience-card .exp-details .exp-company {
  text-decoration: none;
}

.experience-card .exp-details .exp-company:hover {
  text-decoration: underline;
}

.experience-card .exp-description {
  margin: 0;
}

@media screen and (max-width: 1200px) {
  #experience {
    padding-bottom: 96px;
  }

  .sticky-title {
    padding-left: 48px;
    margin-bottom: 24px;
  }
}

@media screen and (max-width: 992px) {
  #experience {
    padding-bottom: 80px;
  }

  .sticky-title {
    padding-left: 32px;
    margin-bottom: 16px;
  }

  #experiences-wrapper {
    padding: 0 48px;
  }

  .experience-card {
    padding: 8px 32px 24px;
  }
}

@media screen and (max-width: 768px) {
  #experience {
    padding-bottom: 72px;
  }

  .sticky-title {
    padding-left: 24px;
    margin-bottom: 8px;
  }

  #experiences-wrapper {
    padding: 0 32px;
  }

  .experience-card {
    padding: 8px 24px 24px;
  }
}

@media screen and (max-width: 576px) {
  #experience {
    padding-bottom: 64px;
  }

  .sticky-title {
    padding-left: 16px;
    margin-bottom: 0;
  }

  #experiences-wrapper {
    padding: 0 24px;
  }

  .experience-card {
    border-left: 4px solid var(--darker-blue);

    padding: 8px 16px 16px;
  }
}
</style>
