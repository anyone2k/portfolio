import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: "export",  // <=== enables static exports
  reactStrictMode: true,
  typescript:{
    ignoreBuildErrors: true,
  }
};

export default nextConfig;
