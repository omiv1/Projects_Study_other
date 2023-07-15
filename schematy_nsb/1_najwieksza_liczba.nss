<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>2183</width>
    <height>982</height>
  </size>
  <name>warunki</name>
  <comment></comment>
  <author>Łukasz Oleksiuk</author>
  <pascalCode contains="yes"/>
  <checkSyntax enabled="yes"/>
  <variables>
    <variable>
      <name>a</name>
      <type>
        <double/>
      </type>
      <value>1</value>
    </variable>
    <variable>
      <name>b</name>
      <type>
        <double/>
      </type>
      <value>1</value>
    </variable>
    <variable>
      <name>c</name>
      <type>
        <double/>
      </type>
      <value>2</value>
    </variable>
    <variable>
      <name>v</name>
      <type>
        <double/>
      </type>
      <value>6.45271e-307</value>
    </variable>
  </variables>
  <sequence>
    <inputinstruction>
      <text>a, b, c</text>
      <comment></comment>
    </inputinstruction>
    <selection instructionsheight="805" conditionheight="101">
      <condition>
        <text>a=b and b=c</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <outputinstruction>
            <text>'a, b, c'</text>
            <comment></comment>
          </outputinstruction>
        </sequence>
      </ontrue>
      <onfalse>
        <sequence>
          <selection instructionsheight="710" conditionheight="89">
            <condition>
              <text>a&lt;c and b&lt;c</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <outputinstruction>
                  <text>'c'</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <selection instructionsheight="579" conditionheight="125">
                  <condition>
                    <text>a>b</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <selection instructionsheight="445" conditionheight="128">
                        <condition>
                          <text>a=c</text>
                          <comment></comment>
                        </condition>
                        <ontrue>
                          <sequence>
                            <outputinstruction>
                              <text>'a, c'</text>
                              <comment></comment>
                            </outputinstruction>
                          </sequence>
                        </ontrue>
                        <onfalse>
                          <sequence>
                            <outputinstruction>
                              <text>'a'</text>
                              <comment></comment>
                            </outputinstruction>
                          </sequence>
                        </onfalse>
                      </selection>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <selection instructionsheight="496" conditionheight="77">
                        <condition>
                          <text>a=b</text>
                          <comment></comment>
                        </condition>
                        <ontrue>
                          <sequence>
                            <outputinstruction>
                              <text>'a, b'</text>
                              <comment></comment>
                            </outputinstruction>
                          </sequence>
                        </ontrue>
                        <onfalse>
                          <sequence>
                            <selection instructionsheight="412" conditionheight="78">
                              <condition>
                                <text>b=c</text>
                                <comment></comment>
                              </condition>
                              <ontrue>
                                <sequence>
                                  <outputinstruction>
                                    <text>'b, c'</text>
                                    <comment></comment>
                                  </outputinstruction>
                                </sequence>
                              </ontrue>
                              <onfalse>
                                <sequence>
                                  <outputinstruction>
                                    <text>'b'</text>
                                    <comment></comment>
                                  </outputinstruction>
                                </sequence>
                              </onfalse>
                            </selection>
                          </sequence>
                        </onfalse>
                      </selection>
                    </sequence>
                  </onfalse>
                </selection>
              </sequence>
            </onfalse>
          </selection>
        </sequence>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
