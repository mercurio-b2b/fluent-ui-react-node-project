import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import 'react-tabs/style/react-tabs.css';
import 'office-ui-fabric-react/dist/css/fabric.css';

class TabsScreen extends Component {
  render() {
    return (
      <Tabs forceRenderTabPanel defaultIndex={1}>
        <TabList>
          <Tab>Kommissionen</Tab>
        </TabList>

        <TabPanel>
          <div className="ms-Grid" dir="ltr">
            <div className="ms-Grid-row">
              <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">A</div>
              <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">
                <Tabs forceRenderTabPanel>
                  <TabList>
                    <Tab>Übersicht</Tab>
                    <Tab>Rechnungen</Tab>
                  </TabList>

                  <TabPanel>
                    <h2>Any content 1</h2>
                  </TabPanel>
                  <TabPanel>
                    <h2>Any content 2</h2>
                  </TabPanel>
                </Tabs>
              </div>
            </div>
          </div>
        </TabPanel>
      </Tabs>
    );
  }
}
export default TabsScreen;