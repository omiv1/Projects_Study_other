<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>866</width>
    <height>651</height>
  </size>
  <name>quick</name>
  <comment></comment>
  <author></author>
  <pascalCode contains="no"/>
  <checkSyntax enabled="no"/>
  <variables>
    <variable>
      <name>i</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
    <variable>
      <name>j</name>
      <type>
        <double/>
      </type>
      <value>3.06135e-296</value>
    </variable>
    <variable>
      <name>lewy</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
    <variable>
      <name>pivot</name>
      <type>
        <double/>
      </type>
      <value>8.32616e-285</value>
    </variable>
    <variable>
      <name>prawy</name>
      <type>
        <double/>
      </type>
      <value>3.05926e-296</value>
    </variable>
    <variable>
      <name>srodek</name>
      <type>
        <double/>
      </type>
      <value>1.6022e-306</value>
    </variable>
    <variable>
      <name>tab</name>
      <type>
        <array size="10" dims="10">
          <long/>
        </array>
      </type>
      <value>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
        <element>0</element>
      </value>
    </variable>
  </variables>
  <sequence>
    <simpleinstruction>
      <text>void quick_sort(int* &amp;tab, int lewy, int prawy)</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>i = lewy</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>j = prawy</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>srodek = int((lewy+prawy)/2)</text>
      <comment></comment>
    </simpleinstruction>
    <simpleinstruction>
      <text>pivot = tab[srodek]</text>
      <comment></comment>
    </simpleinstruction>
    <iteration>
      <condition>
        <text>i &lt;= j</text>
        <comment></comment>
      </condition>
      <loop>
        <sequence>
          <iteration>
            <condition>
              <text>tab[i] &lt; pivot</text>
              <comment></comment>
            </condition>
            <loop>
              <sequence>
                <simpleinstruction>
                  <text>i++</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </loop>
          </iteration>
          <iteration>
            <condition>
              <text>tab[j] > pivot</text>
              <comment></comment>
            </condition>
            <loop>
              <sequence>
                <simpleinstruction>
                  <text>j--</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </loop>
          </iteration>
          <selection instructionsheight="81" conditionheight="41">
            <condition>
              <text>i &lt;= j</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>swap(tab[i], tab[j])</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>i++</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>j--</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence/>
            </onfalse>
          </selection>
        </sequence>
      </loop>
    </iteration>
    <selection instructionsheight="80" conditionheight="39">
      <condition>
        <text>lewy &lt; j</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <simpleinstruction>
            <text>quick_sort(tab, lewy, j)</text>
            <comment></comment>
          </simpleinstruction>
        </sequence>
      </ontrue>
      <onfalse>
        <sequence/>
      </onfalse>
    </selection>
    <selection instructionsheight="69" conditionheight="50">
      <condition>
        <text>prawy > i</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <simpleinstruction>
            <text>quick_sort(tab, i, prawy)</text>
            <comment></comment>
          </simpleinstruction>
        </sequence>
      </ontrue>
      <onfalse>
        <sequence/>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
