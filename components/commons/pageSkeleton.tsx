
"use client";
import { Linkedin, Github, Mail } from "lucide-react";
import { useEffect } from "react"

import { usePathname } from 'next/navigation'

const PageSkeleton = ({children, ...props}) => {
  const pathname = usePathname()

    useEffect(() => { 

    	console.log(pathname);
     }, 

    []);


return (
	<>
		<div className="flex justify-center bg-[#0038A8] bg-cover text-white">
			<div className="flex flex-col items-center sm:w-[768px] md:w-[768px] lg:w-[90vh] max-sm:h-full sm:h-screen shadow-lg">	
				<div className="w-[40vh] justify-start"><h1 className="alegreya text-center text-[85px]">{props.page_title}</h1></div>
				<div className="grid sm:grid-cols-2 max-sm:grid-rows-2 sm:gap-15">
					<div className="roboto flex text-[21px] max-sm:gap-2 sm:gap-2 items-center text-start">
						<a className={`${pathname === "/" ? "underline" : "" }`} href="/">Home</a>
						<a className={`${pathname === "/blog" ? "underline" : "" }`} href="/blog">Blog</a>
						<a className={`${pathname === "/projects" ? "underline" : "" }`} href="/projects">Projects</a>
						<a className={`${pathname === "/experience" ? "underline" : "" }`} href="/experience">Experience</a>
					</div>
					<div className="flex items-center max-sm:justify-center sm:justify-end gap-3 text-2xl max-sm:m-2">
						<a href="https://www.linkedin.com/in/salahettounsi/" target="_blank"><Linkedin  className="w-[40px] h-[40px]"/></a>
	              		<a href="mailto:salaheddineettounsi@hotmail.com" target="_blank"><Mail className="w-[40px] h-[40px]"/></a>
	              		<a href="https://github.com/anyone2k" target="_blank"><Github className="w-[40px] h-[40px]"/></a>
					</div>
				</div>
				{children}
			</div>
		</div>
	</>
	);
};

export  { PageSkeleton };

