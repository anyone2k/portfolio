import type { Metadata } from "next";
import Head from 'next/head'
import "./globals.css";
import { Alegreya, Roboto } from "next/font/google";

const alegreya = Alegreya({
  subsets: ["latin"],
  variable: "--font-alegreya", 
  weight: "500"});
const roboto = Roboto({
  subsets: ["latin"], 
  variable: "--font-roboto",
  weight: "700"});

export const metadata: Metadata = {
  title: "Portfolio",
  description: "Salah. Ettounsi's portfolio.",
};

export default function RootLayout({ children }) {
  return (
    <html className="scroll-smooth" lang="en">
      <body className={`${alegreya.variable} ${roboto.variable} bg-[#0038A8]`}>{children}</body>
    </html>
  );
}
