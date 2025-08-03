"use client";
import  { PageSkeleton }  from "@/components/commons/pageSkeleton"



const Projects = () => {
return (
<>
	<PageSkeleton page_title={"Projects"}>			
			<div className="flex justify-center m-[20px] w-[90%] overflow-auto">	
				<div className="grid grid-rows gap-y-2 w-[200%]">
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis w-[300px] h-[20px]">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief... descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
					<div className="flex flex-col w-[100%] h-[100px] border-b-4 border-white p-2">
						<span className="text-3xl m-2">Project title</span>						
						<span className="text-sm ml-2 overflow-hidden text-ellipsis">Project's brief description Project's brief descriptionProject's brief descriptionProject's brief. descriptionProject's brief descriptionProject's brief description</span>
					</div>
				</div>
			</div>
	</PageSkeleton>
</>

	  );
};

export default Projects;