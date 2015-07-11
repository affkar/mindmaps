<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1424713867351" ID="ID_6834558" MODIFIED="1425043785589" TEXT="OSGI">
<node CREATED="1424713876016" FOLDED="true" ID="ID_956241887" MODIFIED="1425043766331" POSITION="right" TEXT="blueprint">
<node CREATED="1424714849113" ID="ID_706976797" MODIFIED="1424715007044" TEXT="services can be looked up using jndi">
<node CREATED="1424714966292" ID="ID_246466665" MODIFIED="1424715000380" TEXT="just using the interface name, if only one service is registered">
<node CREATED="1424714870085" ID="ID_619919907" MODIFIED="1424714907447" TEXT="osgi:service/javax.sql.DataSource"/>
</node>
<node CREATED="1424715007034" ID="ID_1201915796" MODIFIED="1424715047757" TEXT="if two or more service with same interface is registered, -&gt; osgi service properties">
<node CREATED="1424715065854" ID="ID_1043333373" MODIFIED="1424715481939" TEXT="configure them using &#xa;&lt;service interface=&quot;java.sql.Datasource&quot; ref=&quot;inventoryDS&quot;&gt;&#xa;&lt;service-properties&gt;&#xa;&#x9;&lt;entry key=&quot;osgi.jndi.service.name&quot; value=&quot;jdbc/inventory&quot; /&gt;&#xa;&#x9;&lt;entry key=&quot;mykey&quot; value=&quot;myvalue&quot; /&gt;&#xa; &lt;/service-properties&gt;&#xa;&lt;/service&gt;">
<node CREATED="1424715401097" ID="ID_1539072945" MODIFIED="1424715465739" TEXT="osgi.jndi.service.name is a special property hence can access any service that has this service property via jndi as &#xa;&#x9;osgi:service/jdbc/inventory"/>
</node>
<node CREATED="1424714908152" ID="ID_225875110" MODIFIED="1424715370142" TEXT="access them via osgi:service/javax.sql.DataSource/(osgi.jndi.service.name=jdbc/inventory)"/>
<node CREATED="1424715333328" ID="ID_1942273110" MODIFIED="1424715366667" TEXT="or access them via osgi:service/javax.sql.DataSource/(mykey=myvalue)"/>
</node>
<node CREATED="1424715550251" ID="ID_1023466549" MODIFIED="1424715619369" TEXT="Also if you had some object registered in JNDI, they can be looked up as an OSGi service with its interface"/>
</node>
</node>
<node CREATED="1425043808689" ID="ID_1054303222" MODIFIED="1425044151028" POSITION="left" TEXT="spring dm - par. plan"/>
<node CREATED="1425043794932" ID="ID_1257679193" MODIFIED="1425044139986" POSITION="left" TEXT="karaf features"/>
<node CREATED="1425043775373" ID="ID_1189558298" MODIFIED="1425044144418" POSITION="left" TEXT="aries eba"/>
<node CREATED="1425040650219" ID="ID_1820284491" MODIFIED="1425043857886" POSITION="left" TEXT="esa">
<node CREATED="1425040765524" FOLDED="true" ID="ID_1889674336" MODIFIED="1425043855507" TEXT="types">
<node CREATED="1425040665958" ID="ID_328820716" MODIFIED="1425040776513" TEXT="feature">
<node CREATED="1425040699906" ID="ID_1622957737" MODIFIED="1425040741822" TEXT="default: import all, export all"/>
</node>
<node CREATED="1425040668340" ID="ID_969638245" MODIFIED="1425040777272" TEXT="composite">
<node CREATED="1425040706318" ID="ID_314164036" MODIFIED="1425040747368" TEXT="default: import none, export none"/>
<node CREATED="1425040720234" ID="ID_1443242996" MODIFIED="1425040729534" TEXT="explicit imports, exports"/>
</node>
<node CREATED="1425040657582" ID="ID_1061405789" MODIFIED="1425040784897" TEXT="application">
<node CREATED="1425040679886" ID="ID_118494538" MODIFIED="1425040736542" TEXT="default : import all, export none"/>
</node>
</node>
<node CREATED="1425040837495" ID="ID_23065999" MODIFIED="1425040840772" TEXT="contents">
<node CREATED="1425040802161" ID="ID_317675752" MODIFIED="1425040834686" TEXT="SUBSYSTEM.MF">
<node CREATED="1425040878017" ID="ID_1084534124" MODIFIED="1425040899270" TEXT="convention over configuration, so optional"/>
<node CREATED="1425043961090" ID="ID_1943094343" MODIFIED="1425044177910" TEXT="Subsystem-Content">
<node CREATED="1425044028867" ID="ID_408382674" MODIFIED="1425044191105" TEXT="bundle names with version ranges">
<node CREATED="1425044070023" ID="ID_1791943247" MODIFIED="1425044089969" TEXT="these bundles can have dependencies which are then resolved and provisioned"/>
</node>
</node>
</node>
<node CREATED="1425040844946" ID="ID_1165315199" MODIFIED="1425040854036" TEXT="Contents of app">
<node CREATED="1425044177901" ID="ID_187189914" MODIFIED="1425044186159" TEXT=""/>
<node CREATED="1425043868593" ID="ID_499490751" MODIFIED="1425044129278" TEXT="bundles can be within esa or can be outside"/>
</node>
<node CREATED="1425040859191" ID="ID_1909488223" MODIFIED="1425040872502" TEXT="Deployed procedure"/>
</node>
</node>
</node>
</map>
