
"use client";

import  { PageSkeleton }  from "@/components/commons/pageSkeleton"


const Work = () => {
return (
<>
	<PageSkeleton page_title={"Experience"}>			

		<div className="m-10 w-[75%]">
			<div className="">
				<h4 className="font-bold text-xl">2025</h4>
				<ul className="list-disc ">
					<li className="ml-7 font-medium">Freelance, <a className="italic hover:underline" href="https://leadsonline.com/" target="_blank">Forensic Technology, a LeadsOnline Company</a></li>
				</ul>
				<h4 className="font-bold text-xl">2024</h4>
				<ul className="list-disc ">
					<li className="ml-7 font-medium">Software developer intern, <a className="italic hover:underline" href="https://leadsonline.com/" target="_blank">Forensic Technology, a LeadsOnline Company</a></li>
				</ul>
			</div>

		</div>
 	</PageSkeleton>
</>

	  );
};

export default Work;

