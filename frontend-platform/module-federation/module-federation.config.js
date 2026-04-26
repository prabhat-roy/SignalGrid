// Module Federation across SignalGrid frontends (storefront / admin / partner / mobile-web)
const { ModuleFederationPlugin } = require("@module-federation/enhanced/webpack");
module.exports = {
  plugins: [
    new ModuleFederationPlugin({
      name: "signalgrid_shell",
      remotes: {
        admin: "admin@https://admin.signalgrid.internal/remoteEntry.js",
        partner: "partner@https://partner.signalgrid.internal/remoteEntry.js",
      },
      shared: { react: { singleton: true }, "react-dom": { singleton: true } },
    }),
  ],
};
