<div id='readme' style="max-width:100%;height:100px;width:550px;border: 0;margin: auto;display: inline-block;">
	<p>These files let you start and stop the Oculus VR service.<br>The batch file checks to make sure you're running as an admin before showing you the state of the service and confirming you want to start or stop it.<br>The executable does exactally the same thing as the batch file, but can be pinned to the taskbar or start menu for easy access.</p>
</div>
<hr style="height:10px; visibility:hidden;" />
<div id='exe' style="max-width:50%;height:100px;width:300px;border: 0;margin: auto;display: inline-block;">
	<a href='ovrtoggle.exe' style='text-decoration: none;'><button>Download .exe</button></a>
</div>
<div id='bat' style="max-width:50%;height:100px;width:300px;border: 0;margin: auto;display: inline-block;">
	<a href='ovrtoggle.bat' style='text-decoration: none;'><button>Download .bat</button></a>
</div>
<hr style="height:1px; visibility:hidden;" />
<div class="encase">
	<button class="collapsible" id="source" data-parent="source" data-child="source-child">View Source</button>
	<div id="source-child" class="innertext center" data-parent="source">
		<pre id="rawfile" style="text-align:left; background:#000; color: green;height:auto;width:100%;border: 4px solid #006900;margin: 18px 0 18px;"></pre>
	</div>
</div>
<hr style="height:1px; visibility:hidden;" />
<footer>
	<div style="max-width:95%;height: auto;width: auto;border: 0;margin: auto;display: inline-block;">
		This is <a href='https://raw.githubusercontent.com/LunarTiger/ovrtoggle/master/LICENSE' target="_blank">open source</a>!! If you want to contribute, you can.<br>
		<a href='https://github.com/LunarTiger/ovrtoggle/archive/master.zip'>Download a ZIP</a>, or use <mark>https://github.com/LunarTiger/ovrtoggle.git</mark> to clone the repo.
	</div>
</footer>
<script>
fetch('https://lunartiger.github.io/ovrtoggle/ovrtoggle.bat')
.then(body=>body.text())
.then(body=>{document.getElementById('rawfile').innerText = body;})
</script>