"use client";
import { useState, useRef } from "react";
import  { PageSkeleton }  from "@/components/commons/pageSkeleton"
import Image from 'next/image'



const Home = () => {
  return (
    <>
      <div className="flex justify-center">
        <PageSkeleton page_title={"Home"}>      
          <div className="text-5xl m-4 font-bold mb-10">About</div>
          <div className="max-sm:grid sm:flex sm:grid-cols-2 max-sm:grid-rows-2 sm:m-15 sm:-mt-5">
          <Image src="/images/self_image.jpeg" className="max-sm:w-screen row-span-1" width={300} height={200} alt="portrait"/>
          <p className="max-sm:row-span-1 m-4 text-[20px] first-line:uppercase first-line:tracking-widest first-letter:text-7xl first-letter:font-bold first-letter:text-white first-letter:me-3 first-letter:float-start">As a backend developer, I stand out for my <b>diligence</b>, <b>responsibility</b>, and <b>attention to detail</b>. With a strong work ethic, a dynamic mindset, and high energy, I tackle technical challenges efficiently. Resourceful and perceptive, I quickly adapt to project needs and deliver robust, high-performance solutions.</p>
          </div>
        </PageSkeleton>      
      </div>

    </>
  );
};

export default Home;
