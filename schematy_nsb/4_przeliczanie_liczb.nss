<!DOCTYPE nsscheme>
<nsscheme type="sequence">
  <position>
    <x>4</x>
    <y>30</y>
  </position>
  <size>
    <width>1697</width>
    <height>1276</height>
  </size>
  <name>przelicznie_liczba</name>
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
      <value>0</value>
    </variable>
    <variable>
      <name>a1</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
    <variable>
      <name>a2</name>
      <type>
        <double/>
      </type>
      <value>1</value>
    </variable>
    <variable>
      <name>a3</name>
      <type>
        <double/>
      </type>
      <value>1</value>
    </variable>
    <variable>
      <name>a4</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
    <variable>
      <name>b</name>
      <type>
        <double/>
      </type>
      <value>110</value>
    </variable>
    <variable>
      <name>liczba</name>
      <type>
        <double/>
      </type>
      <value>6</value>
    </variable>
    <variable>
      <name>system</name>
      <type>
        <double/>
      </type>
      <value>2</value>
    </variable>
    <variable>
      <name>x</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
    <variable>
      <name>y</name>
      <type>
        <double/>
      </type>
      <value>0</value>
    </variable>
  </variables>
  <sequence>
    <simpleinstruction>
      <text>x:=1</text>
      <comment></comment>
    </simpleinstruction>
    <iteration>
      <condition>
        <text>x=1</text>
        <comment></comment>
      </condition>
      <loop>
        <sequence>
          <outputinstruction>
            <text>'Podaj ( 1 ) dla konwersji z systemy binarnego na dziesiętny,  ( 2 ) dla konwersji z systemy dziesiętnego na binarny.'</text>
            <comment></comment>
          </outputinstruction>
          <inputinstruction>
            <text>system</text>
            <comment></comment>
          </inputinstruction>
          <selection instructionsheight="471" conditionheight="68">
            <condition>
              <text>(system=1) or (system=2)</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>x:=0</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <outputinstruction>
                  <text>'podałeś błędną wartość'</text>
                  <comment></comment>
                </outputinstruction>
              </sequence>
            </onfalse>
          </selection>
        </sequence>
      </loop>
    </iteration>
    <selection instructionsheight="564" conditionheight="33">
      <condition>
        <text>system=1</text>
        <comment></comment>
      </condition>
      <ontrue>
        <sequence>
          <simpleinstruction>
            <text>y:=1</text>
            <comment></comment>
          </simpleinstruction>
          <iteration>
            <condition>
              <text>y=1</text>
              <comment></comment>
            </condition>
            <loop>
              <sequence>
                <outputinstruction>
                  <text>'podaj liczbę w systemie binarnym z zakresu (0;1111)'</text>
                  <comment></comment>
                </outputinstruction>
                <inputinstruction>
                  <text>liczba</text>
                  <comment></comment>
                </inputinstruction>
                <simpleinstruction>
                  <text>a:=liczba</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a1:=a mod 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a div 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a2:=a mod 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a div 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a3:=a mod 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a div 10</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a4:=a mod 10</text>
                  <comment></comment>
                </simpleinstruction>
                <selection instructionsheight="160" conditionheight="98">
                  <condition>
                    <text>a1>1 or a2>1 or a3>1 or a4>1 or liczba>1111 or liczba&lt;0</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <outputinstruction>
                        <text>'podałeś wartość z niewłaściwego zakresu'</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <simpleinstruction>
                        <text>y:=0</text>
                        <comment></comment>
                      </simpleinstruction>
                    </sequence>
                  </onfalse>
                </selection>
              </sequence>
            </loop>
          </iteration>
          <simpleinstruction>
            <text>b:=(a4*8)+(a3*4)+(a2*2)+(a1*1)</text>
            <comment></comment>
          </simpleinstruction>
          <outputinstruction>
            <text>liczba, '(2) =', b, '(10)'</text>
            <comment></comment>
          </outputinstruction>
        </sequence>
      </ontrue>
      <onfalse>
        <sequence>
          <simpleinstruction>
            <text>y:=1</text>
            <comment></comment>
          </simpleinstruction>
          <iteration>
            <condition>
              <text>y=1</text>
              <comment></comment>
            </condition>
            <loop>
              <sequence>
                <outputinstruction>
                  <text>'podaj liczbę w systenie dziesiętnym z zakresu (0, 15)'</text>
                  <comment></comment>
                </outputinstruction>
                <inputinstruction>
                  <text>liczba</text>
                  <comment></comment>
                </inputinstruction>
                <selection instructionsheight="22" conditionheight="33">
                  <condition>
                    <text>liczba>15 or liczba&lt;0</text>
                    <comment></comment>
                  </condition>
                  <ontrue>
                    <sequence>
                      <outputinstruction>
                        <text>'podałeś wartość z niewłaściwego zakresu'</text>
                        <comment></comment>
                      </outputinstruction>
                    </sequence>
                  </ontrue>
                  <onfalse>
                    <sequence>
                      <simpleinstruction>
                        <text>y:=0</text>
                        <comment></comment>
                      </simpleinstruction>
                    </sequence>
                  </onfalse>
                </selection>
              </sequence>
            </loop>
          </iteration>
          <simpleinstruction>
            <text>a:=liczba</text>
            <comment></comment>
          </simpleinstruction>
          <selection instructionsheight="50" conditionheight="33">
            <condition>
              <text>(a mod 2)=0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>a1:=0</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <simpleinstruction>
                  <text>a1:=1</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=(a-1)/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </onfalse>
          </selection>
          <selection instructionsheight="51" conditionheight="33">
            <condition>
              <text>(a mod 2)=0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>a2:=0</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <simpleinstruction>
                  <text>a2:=1</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=(a-1)/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </onfalse>
          </selection>
          <selection instructionsheight="44" conditionheight="39">
            <condition>
              <text>(a mod 2)=0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>a3:=0</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <simpleinstruction>
                  <text>a3:=1</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=(a-1)/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </onfalse>
          </selection>
          <selection instructionsheight="44" conditionheight="39">
            <condition>
              <text>(a mod 2)=0</text>
              <comment></comment>
            </condition>
            <ontrue>
              <sequence>
                <simpleinstruction>
                  <text>a4:=0</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=a/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </ontrue>
            <onfalse>
              <sequence>
                <simpleinstruction>
                  <text>a4:=1</text>
                  <comment></comment>
                </simpleinstruction>
                <simpleinstruction>
                  <text>a:=(a-1)/2</text>
                  <comment></comment>
                </simpleinstruction>
              </sequence>
            </onfalse>
          </selection>
          <simpleinstruction>
            <text>b:=(a4*1000)+(a3*100)+(a2*10)+(a1*1)</text>
            <comment></comment>
          </simpleinstruction>
          <outputinstruction>
            <text>liczba, '(10) =', b, '(2)'</text>
            <comment></comment>
          </outputinstruction>
        </sequence>
      </onfalse>
    </selection>
  </sequence>
</nsscheme>
