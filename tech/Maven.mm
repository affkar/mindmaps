<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1424429818619" ID="ID_1657114975" MODIFIED="1424462100466" STYLE="fork" TEXT="Maven">
<node CREATED="1424429825132" ID="ID_1533994276" MODIFIED="1424458529942" POSITION="right" TEXT="convention over configuration">
<node CREATED="1424429841231" ID="ID_242245458" MODIFIED="1424429867551" TEXT="Nice, defaults- so it works out of the box, if you follow convention"/>
<node CREATED="1424429875118" ID="ID_682229347" MODIFIED="1424429880544" TEXT="You can still customize"/>
</node>
<node CREATED="1424429881938" ID="ID_1428929013" MODIFIED="1424458202196" POSITION="right" TEXT="core">
<node CREATED="1424451822175" ID="ID_1572671794" MODIFIED="1424458202196" TEXT="tracks a few plugins and lifecycles"/>
<node CREATED="1424451846802" ID="ID_921703792" MODIFIED="1424458202196" TEXT="hands execution to plugins"/>
</node>
<node CREATED="1424451867654" ID="ID_1142622383" MODIFIED="1424458526252" POSITION="right" TEXT="maven book can only document the core pom and a few plugins. :-)">
<node CREATED="1424451901918" ID="ID_525586225" MODIFIED="1424451948706" TEXT="for the rest - search documentation"/>
</node>
<node CREATED="1424459530018" FOLDED="true" ID="ID_561201186" MODIFIED="1424459597815" POSITION="left" TEXT="property references within poms">
<node CREATED="1424451958089" ID="ID_1327800643" MODIFIED="1424458202196" TEXT=" env variables -&gt; ${env.variable}"/>
<node CREATED="1424451981246" ID="ID_201232160" MODIFIED="1424458202196" TEXT="project variables from pom file &lt;project&gt;&lt;build&gt;&lt;directory&gt;&lt;/directory&gt;&lt;/build&gt;&lt;/project&gt;  -&gt; ${project.build.directory}"/>
<node CREATED="1424452060701" ID="ID_1826670127" MODIFIED="1424458202200" TEXT="variables from settings.xml file -&gt; ${settings.offline}"/>
<node CREATED="1424452254525" ID="ID_1288496362" MODIFIED="1424458202200" TEXT="Java system properties and arbitrary properties declares -&gt; ${os.name} ${abc}"/>
<node CREATED="1424452365197" ID="ID_1581895231" MODIFIED="1424458510364" TEXT="difference between env and system">
<node CREATED="1424452381066" ID="ID_1622178280" MODIFIED="1424458514783" TEXT="">
<icon BUILTIN="help"/>
</node>
</node>
</node>
<node CREATED="1424458218788" FOLDED="true" ID="ID_179109332" MODIFIED="1424462101566" POSITION="left" TEXT="Dependency">
<node CREATED="1424452386773" FOLDED="true" ID="ID_926368178" MODIFIED="1424459516310" TEXT="scopes">
<node CREATED="1424452390518" ID="ID_965286852" MODIFIED="1424458508970" TEXT="runtime">
<node CREATED="1424452711946" ID="ID_332510833" MODIFIED="1424452761519" TEXT="only during execution and test. not available at compile time">
<node CREATED="1424452762589" ID="ID_234488492" MODIFIED="1424452768539" TEXT="jdbc driver">
<node CREATED="1424452793423" ID="ID_277584576" MODIFIED="1424458550445" TEXT="Will it be packaged">
<icon BUILTIN="help"/>
</node>
</node>
</node>
</node>
<node CREATED="1424452398723" ID="ID_1656940924" MODIFIED="1424458202201" TEXT="compile"/>
<node CREATED="1424452408254" ID="ID_1037837849" MODIFIED="1424458519993" TEXT="test">
<node CREATED="1424452420293" ID="ID_1655367148" MODIFIED="1424452459338" TEXT="added to test classpath">
<node CREATED="1424452463408" ID="ID_1973924067" MODIFIED="1424452479227" TEXT="compare it with m2eclipse">
<node CREATED="1424452480690" ID="ID_1411306098" MODIFIED="1424452512444" TEXT="just adds everything to the classpath, even if it is test/provided/runtime, etc"/>
</node>
</node>
</node>
<node CREATED="1424452410055" ID="ID_350897077" MODIFIED="1424458520966" TEXT="system">
<node CREATED="1424452527465" ID="ID_1367045033" MODIFIED="1424452548818" TEXT="avoid using this">
<node CREATED="1424452549980" ID="ID_1836771545" MODIFIED="1424452560778" TEXT="maven will not search the repo"/>
<node CREATED="1424452564771" ID="ID_453160156" MODIFIED="1424452576463" TEXT="you will have to use a system path"/>
</node>
</node>
<node CREATED="1424452412789" ID="ID_933073586" MODIFIED="1424458521818" TEXT="provided">
<node CREATED="1424452633288" ID="ID_1690405272" MODIFIED="1424452707815" TEXT="container to provide jar. Will be available at compile time. but will not be packaged"/>
</node>
</node>
<node CREATED="1424458236714" FOLDED="true" ID="ID_257792996" MODIFIED="1424459515482" TEXT="optional element">
<node CREATED="1424458251305" ID="ID_1532006047" MODIFIED="1424458372280" TEXT="the dependency will not be packaged ">
<node CREATED="1424458379148" ID="ID_1396676511" MODIFIED="1424458489186" TEXT="Any Project that depends on your project as a dependency will not see this optional dependency as a transitive dependency and hence will have to include this dependency explicitly in their pom.">
<node CREATED="1424458494587" ID="ID_1684193223" MODIFIED="1424458497690" TEXT="">
<icon BUILTIN="help"/>
</node>
</node>
</node>
</node>
<node CREATED="1424458566767" FOLDED="true" ID="ID_1339145790" MODIFIED="1424459514601" TEXT="Version quantifier">
<node CREATED="1424458593634" ID="ID_197089393" MODIFIED="1424458607673" TEXT="Exclusive quantifier">
<node CREATED="1424458578537" ID="ID_1906386321" MODIFIED="1424458583644" TEXT="(,)"/>
</node>
<node CREATED="1424458609695" ID="ID_1802983358" MODIFIED="1424458616133" TEXT="Inclusive Quantifier">
<node CREATED="1424458584555" ID="ID_492413269" MODIFIED="1424458587683" TEXT="[,]"/>
</node>
<node CREATED="1424458618575" ID="ID_1845954111" MODIFIED="1424458630743" TEXT="[1.0,2.0)">
<node CREATED="1424458633795" ID="ID_1965432266" MODIFIED="1424458655095" TEXT="Versions from 1.0 and later until 2.0 but not 2.0"/>
</node>
<node CREATED="1424458658761" ID="ID_1931046582" MODIFIED="1424458673995" TEXT="[1.0]">
<node CREATED="1424458675433" ID="ID_118880568" MODIFIED="1424458687365" TEXT="Exactly 1.0 no greater no lesser"/>
</node>
<node CREATED="1424458744996" ID="ID_1833318588" MODIFIED="1424458755389" TEXT="[1.0,)">
<node CREATED="1424458781419" ID="ID_832405737" MODIFIED="1424458789265" TEXT="any version greater than 1.0"/>
</node>
<node CREATED="1424458793798" ID="ID_1556863542" MODIFIED="1424458801632" TEXT="[,2.0]">
<node CREATED="1424458803205" ID="ID_1239945742" MODIFIED="1424458814796" TEXT="any version lesser than or equal to 2.0"/>
</node>
</node>
<node CREATED="1424458829318" ID="ID_1716405546" MODIFIED="1424458841948" TEXT="transitive dependencies"/>
<node CREATED="1424458847252" FOLDED="true" ID="ID_824381171" MODIFIED="1424459512952" TEXT="dependency exclusions">
<node CREATED="1424459383729" ID="ID_1724221255" MODIFIED="1424459396351" TEXT="exclude a transitive dependency"/>
<node CREATED="1424459397436" FOLDED="true" ID="ID_1143697057" MODIFIED="1424459512129" TEXT="exclude a dependency which is not marked optional in someother project and you are depending on that project.">
<node CREATED="1424459437738" ID="ID_732726551" MODIFIED="1424459469766" TEXT="that project has really fucked up their pom and you want to depend on them">
<icon BUILTIN="yes"/>
</node>
</node>
<node CREATED="1424459478199" ID="ID_1686623209" MODIFIED="1424459498233" TEXT="Exclude a dependency and include an alternative dependency"/>
</node>
</node>
<node CREATED="1424459624671" ID="ID_595436029" MODIFIED="1424462086993" POSITION="left" TEXT="Project Relationships">
<node CREATED="1424459639845" FOLDED="true" ID="ID_683402144" MODIFIED="1424463441687" TEXT="Parent Project -Child Project">
<node CREATED="1424459656747" ID="ID_1401329944" MODIFIED="1424459661552" TEXT="Pom1"/>
<node CREATED="1424459664990" FOLDED="true" ID="ID_844291185" MODIFIED="1424461628840" TEXT="Pom2 inherits Pom1">
<node CREATED="1424460652245" FOLDED="true" ID="ID_6799511" MODIFIED="1424461455450" TEXT="Inherits the following from parent pom">
<node CREATED="1424461383197" ID="ID_1091400245" MODIFIED="1424461397414" TEXT="identifiers (at least one of groupId or artifactId must be overridden.)   "/>
<node CREATED="1424461399748" ID="ID_246978857" MODIFIED="1424461406046" TEXT="dependencies   "/>
<node CREATED="1424461410186" ID="ID_1155488940" MODIFIED="1424461416833" TEXT="developers and contributors   "/>
<node CREATED="1424461418237" ID="ID_471706743" MODIFIED="1424461425868" TEXT="plugin lists   "/>
<node CREATED="1424461427105" ID="ID_1279108902" MODIFIED="1424461431903" TEXT="reports lists  "/>
<node CREATED="1424461433776" ID="ID_521819727" MODIFIED="1424461442271" TEXT="plugin executions (executions with matching ids are merged)   "/>
<node CREATED="1424461445010" ID="ID_853238608" MODIFIED="1424461448667" TEXT="plugin configuration "/>
</node>
<node CREATED="1424460519836" ID="ID_145145096" MODIFIED="1424461361427" TEXT="You can also override information that has been inherited from the parent"/>
<node CREATED="1424459788601" ID="ID_1614414035" MODIFIED="1424459866862" TEXT="dependency version might not be needed if dependency management is defined in the parent pom - pom1"/>
<node CREATED="1424459869489" ID="ID_700852383" MODIFIED="1424459903328" TEXT="plugin dependency version might not be needed if a pluginManagement is defined in the parent"/>
</node>
<node CREATED="1424461508709" FOLDED="true" ID="ID_1534671506" MODIFIED="1424461632143" TEXT="assumes that the parent pom - pom1 is at ">
<node CREATED="1424461532459" ID="ID_836141710" MODIFIED="1424461533698" TEXT=".."/>
<node CREATED="1424461534761" ID="ID_1224492043" MODIFIED="1424461583387" TEXT="the local repo already"/>
</node>
<node CREATED="1424461596670" FOLDED="true" ID="ID_1867221809" MODIFIED="1424461631512" TEXT="If not at these places,">
<node CREATED="1424461608930" ID="ID_340402282" MODIFIED="1424461623294" TEXT="then a relativePath must be provided"/>
</node>
<node CREATED="1424463374651" ID="ID_615618101" MODIFIED="1424463399725" TEXT="Use this if you think the projects share build plugins, dependencies, etc"/>
</node>
<node CREATED="1424459920589" FOLDED="true" ID="ID_617421133" MODIFIED="1424463441008" TEXT="Managed by a multimodule project">
<node CREATED="1424459933465" ID="ID_1868286757" MODIFIED="1424459956177" TEXT="Pom1 declares submodules pom2, pom3, etc">
<node CREATED="1424459966480" ID="ID_342633406" MODIFIED="1424459989900" TEXT="So when pom1 is build, pom2 and pom3 will also be built"/>
</node>
<node CREATED="1424459957584" ID="ID_706674082" MODIFIED="1424459959995" TEXT="pom2"/>
<node CREATED="1424459960845" ID="ID_1253685057" MODIFIED="1424459962803" TEXT="pom3"/>
<node CREATED="1424463414204" ID="ID_597158235" MODIFIED="1424463430917" TEXT="Use this if you&apos;d like the projects to be built together"/>
</node>
<node CREATED="1424461942753" FOLDED="true" ID="ID_125956500" MODIFIED="1424463440447" TEXT="pom composition or pom as a dependency">
<node CREATED="1424461950174" ID="ID_899263483" MODIFIED="1424461993011" TEXT="pom1 has packaging pom and has dependencies spring, jpa, hibernate, etc"/>
<node CREATED="1424461997345" FOLDED="true" ID="ID_134684722" MODIFIED="1424462249110" TEXT="pom2 includes a dependency to pom1 and says type pom">
<node CREATED="1424462019785" FOLDED="true" ID="ID_1432181528" MODIFIED="1424462247648" TEXT="It now depends on all dependencies of pom1">
<node CREATED="1424462232025" ID="ID_366487427" MODIFIED="1424462244326" TEXT="cool.. isn&apos;t it? but look next"/>
</node>
<node CREATED="1424462140276" ID="ID_1706454740" MODIFIED="1424462207085" TEXT="But this pushes the dependency reach by 1 more, so if there was a conflict in version for a dependency, nearest would be chosen">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1424460339362" FOLDED="true" ID="ID_1236400072" MODIFIED="1424463463712" TEXT="No Inheritance? really??">
<node CREATED="1424460343953" ID="ID_967960340" MODIFIED="1424462070659" TEXT="Even if a project did not have a parent element declared, it still implicitly inherits from the super pom">
<node CREATED="1424460400606" ID="ID_213554450" MODIFIED="1424462091743" TEXT="you can see this with">
<node CREATED="1424460464685" ID="ID_1723360050" MODIFIED="1424460465947" TEXT="mvn help:effective-pom"/>
</node>
</node>
<node CREATED="1424463445477" ID="ID_691806466" MODIFIED="1424463461894" TEXT="Is there a corporate default super pom">
<icon BUILTIN="help"/>
</node>
</node>
</node>
</node>
</map>
