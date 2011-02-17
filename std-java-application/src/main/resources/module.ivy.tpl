<ivy-module version="2.0" xmlns:ea="http://www.easyant.org"> 
	<info organisation="@project.organisation@" module="@project.module@" 
			status="integration" revision="@project.revision@">
		<!--
			This easyant section is equivalent to having a module.ant like this:
			
			<project name="@project.organisation@;@project.module@"
				xmlns:ea="antlib:org.apache.easyant">
				
				<ea:import organisation="org.apache.easyant.buildtypes" module="build-std-java" revision="0.2"/>
			</project>				
		  -->
		<!-- note that in a module.ivy the organisation attribute is not mandatory
			if not specified easyant will use the default organisation for build type / plugin -->
		<ea:build organisation="org.apache.easyant.buildtypes" module="build-std-java" revision="0.2"/>
	</info>
	<configurations>
		<conf name="default" visibility="public" description="runtime dependencies artifact can be used with this conf"/>
		<conf name="test" visibility="private" description="this scope indicates that the dependency is not required for normal use of the application, and is only available for the test compilation and execution phases."/>
		<conf name="provided" visibility="public" description="this is much like compile, but indicates you expect the JDK or a container to provide it. It is only available on the compilation classpath, and is not transitive."/>
	</configurations>
	<dependencies>
		<!-- your project dependencies goes here -->
		<!--
			<dependency org="junit" name="junit" rev="4.4" conf="test->default" />
		-->
	</dependencies>
</ivy-module>
