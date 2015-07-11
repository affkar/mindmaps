<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1429886913848" ID="ID_262259119" MODIFIED="1429886931899" TEXT="Transaction and Concurrency Management">
<node CREATED="1429886944694" ID="ID_332283933" MODIFIED="1429886948380" POSITION="right" TEXT="Transaction">
<node CREATED="1429886952695" ID="ID_1039019176" MODIFIED="1429887604996" TEXT="ACID">
<node CREATED="1429886957635" FOLDED="true" ID="ID_806312533" MODIFIED="1429888129595" TEXT="Atomicity">
<node CREATED="1429887101750" ID="ID_658793647" MODIFIED="1429888121008" TEXT="All prescribed DB actions happen or None happens">
<node CREATED="1429887023921" ID="ID_296814995" MODIFIED="1429887042788" TEXT="Action: DB"/>
</node>
</node>
<node CREATED="1429886963875" FOLDED="true" ID="ID_605488967" MODIFIED="1429888130219" TEXT="Consistency">
<node CREATED="1429887044497" ID="ID_961149056" MODIFIED="1429887048558" TEXT="Action: User"/>
</node>
<node CREATED="1429886973910" ID="ID_287841232" MODIFIED="1429890130333" TEXT="Isolation">
<node CREATED="1429887611274" FOLDED="true" ID="ID_237937702" MODIFIED="1429887919169" TEXT="Transactions are generally interleaved by Databases, since that gives performance boost">
<node CREATED="1429887023921" ID="ID_1984749140" MODIFIED="1429887042788" TEXT="Action: DB"/>
</node>
<node CREATED="1429887784500" ID="ID_1127624173" MODIFIED="1429887826111" TEXT="You could have serial transactions- like one finishes and then another starts, but that would be a huge waste of time"/>
<node CREATED="1429887833263" ID="ID_1226784099" MODIFIED="1429887914086" TEXT="But if they are interleaved, When one transaction, does the database IO, another transaction could be serving up the data for another customer on the UI"/>
</node>
<node CREATED="1429886984765" FOLDED="true" ID="ID_659612968" MODIFIED="1429888132153" TEXT="Durability">
<node CREATED="1429887504021" ID="ID_1005479294" MODIFIED="1429887540347" TEXT="If transactions are committed, they should be preserved/should survive a crash">
<node CREATED="1429887023921" ID="ID_1444375357" MODIFIED="1429887042788" TEXT="Action: DB"/>
</node>
</node>
</node>
</node>
<node CREATED="1429888143861" ID="ID_1574968862" MODIFIED="1429888155832" POSITION="left" TEXT="How databases Manage Transactions">
<node CREATED="1429889713735" ID="ID_1285363337" MODIFIED="1429890025582" TEXT="To Ensure Atomicity and Durability">
<node CREATED="1429888160439" ID="ID_562220713" MODIFIED="1429889750356" TEXT="Log and Recovery Manager">
<node CREATED="1429888194448" ID="ID_1827650618" MODIFIED="1429888202850" TEXT="Maintains a log of activities "/>
<node CREATED="1429888318221" ID="ID_1575775124" MODIFIED="1429888343812" TEXT="Log contains old value, new value, transaction id and order of actions"/>
<node CREATED="1429888381944" ID="ID_531104592" MODIFIED="1429889484815" TEXT="Write Ahead Policy - Log Entries written to Stable storage at appropriate times"/>
<node CREATED="1429889492534" ID="ID_1657911034" MODIFIED="1429889592680" TEXT="Rollback">
<node CREATED="1429889594427" ID="ID_1566511891" MODIFIED="1429889595833" TEXT="the concerned log entries are undone"/>
</node>
<node CREATED="1429889602107" ID="ID_1439761870" MODIFIED="1429889641997" TEXT="In case of a crash">
<node CREATED="1429889544770" ID="ID_1690496900" MODIFIED="1429889576086" TEXT="All actions of committed transactions not synced to disk, are redone"/>
<node CREATED="1429889613560" ID="ID_1262857947" MODIFIED="1429889631603" TEXT="All uncommitted transactions are discarded"/>
</node>
</node>
</node>
<node CREATED="1429890027521" ID="ID_1898853201" MODIFIED="1429891388352" TEXT="To Ensure Isolation"/>
</node>
</node>
</map>
