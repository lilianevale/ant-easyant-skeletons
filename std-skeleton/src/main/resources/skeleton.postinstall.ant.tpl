<project name="org.apache.easyant.plugins#skeleton-postinstall" default="doit">

	<target name="doit">
		<!-- rename the plugin skeleton -->
		<move file="${basedir}/src/main/resources/module.ivy" 
			tofile="${basedir}/src/main/resources/module.ivy.tpl"/>
		<!-- rename the plugin testcase skeleton --> 	
		<move file="${basedir}/src/test/antunit/temp-plugin-test.xml" 
			tofile="${basedir}/src/test/antunit/@project.module@-test.xml"/>
	</target>

</project>
