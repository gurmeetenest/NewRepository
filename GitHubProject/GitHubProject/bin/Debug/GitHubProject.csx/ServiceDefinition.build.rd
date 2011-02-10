<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="GitHubProject" generation="1" functional="0" release="0" Id="b1cecc31-7ef8-4f97-a99f-7c6e97229127" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="GitHubProjectGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="WebRole1:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/GitHubProject/GitHubProjectGroup/LB:WebRole1:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="WebRole1Instances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/GitHubProject/GitHubProjectGroup/MapWebRole1Instances" />
          </maps>
        </aCS>
        <aCS name="WebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/GitHubProject/GitHubProjectGroup/MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/GitHubProject/GitHubProjectGroup/MapWebRole1:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/GitHubProject/GitHubProjectGroup/MapWebRole1:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="WebRole1:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/GitHubProject/GitHubProjectGroup/MapWebRole1:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:WebRole1:Endpoint1">
          <toPorts>
            <inPortMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapWebRole1Instances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1Instances" />
          </setting>
        </map>
        <map name="MapWebRole1:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapWebRole1:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapWebRole1:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapWebRole1:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="WebRole1" generation="1" functional="0" release="0" software="C:\Users\eNest-9\NewRepository\GitHubProject\GitHubProject\bin\Debug\GitHubProject.csx\roles\WebRole1" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;WebRole1&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;WebRole1&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1Instances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="WebRole1Instances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="72dd40fa-71ac-43e9-a074-2347e95a0881" ref="Microsoft.RedDog.Contract\ServiceContract\GitHubProjectContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="37b64666-cea1-4485-913b-26ce5a3dc086" ref="Microsoft.RedDog.Contract\Interface\WebRole1:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/GitHubProject/GitHubProjectGroup/WebRole1:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>