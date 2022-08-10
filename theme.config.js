import React from "react";

// theme.config.js
export default {
  projectLink: 'https://github.com/shuding/nextra', // GitHub link in the navbar
  docsRepositoryBase: 'https://github.com/shuding/nextra/blob/master', // base URL for the docs repository
  titleSuffix: ' – Nextra',
  nextLinks: true,
  prevLinks: true,
  search: true,
  customSearch: null, // customizable, you can use algolia for example
  darkMode: true,
  footer: true,
  footerText: `MIT ${new Date().getFullYear()} © Shu Ding.`,
  footerEditLink: `Edit this page on GitHub`,
  logo: (
    <React.Fragment>
      <span className="mr-2 font-extrabold md:inline" style={{ fontSize: '30px' }}>Wundart</span>
      <span className="font-extrabold md:inline" style={{ color: '#EA335F' }}>wiki</span>
    </React.Fragment>
  ),
  head: (
    <>
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="description" content="Nextra: the next docs builder" />
      <meta name="og:title" content="Nextra: the next docs builder" />
    </>
  ),
}