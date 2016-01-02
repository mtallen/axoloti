<patch-1.0>
   <obj type="patch/inlet a" sha="709c10aa648c6e5a3c00da4b5dd238899a7c109c" uuid="b577fe41e0a6bc7b5502ce33cb8a3129e2e28ee5" name="phasor" x="112" y="70">
      <params/>
      <attribs/>
   </obj>
   <obj type="ctrl/dial p" sha="501c30e07dedf3d701e8d0b33c3c234908c3388e" uuid="cc5d2846c3d50e425f450c4b9851371b54f4d674" name="offset" x="112" y="112">
      <params>
         <frac32.u.map name="value" onParent="true" value="8.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/inlet f" sha="8e69e1ab7ccd8afaefdc23146c50149809b64955" uuid="5c585d2dcd9c05631e345ac09626a22a639d7c13" name="width" x="112" y="196">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/div 64" sha="e63365a7cd04c05a073cdb3f5214f9c2e8d03214" uuid="da82c8ea54e956811f1d7264d921628e3301971e" name="div_1" x="224" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*" sha="ec71f518aa0e133062e5a9d4828d3739865c99f" uuid="922423f2db9f222aa3e5ba095778288c446da47a" name="*_2" x="294" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="conv/interp" sha="4b93f3e0f08b85924e07feabcdfe53fc11aa6a48" uuid="d68c1a8709d8b55e3de8715d727ec0a2d8569d9a" name="interp_1" x="350" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/+" sha="9f8cb68e327acfaa43539be73ff97faab497ad45" uuid="faedbea4612d9bd3644d6d3bf31946d848a70e19" name="+_1" x="420" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/sin" sha="51996a69a9846bb8ba863c4e645fc3024fd55a2" uuid="3fd3c55bdecb474393c99b2a5b01e9bed143eca7" name="sin_3" x="490" y="224">
      <params/>
      <attribs/>
   </obj>
   <obj type="math/*c" sha="a73a2cafcf92eb4b6524655dcee98a569d5ddc28" uuid="7a66f52a9594e7e9eb31328ea725cb3641a80b55" name="*c_2" x="546" y="224">
      <params>
         <frac32.u.map name="amp" value="64.0"/>
      </params>
      <attribs/>
   </obj>
   <obj type="patch/outlet a" sha="9e7e04867e1d37837b0924c9bf18c44ac68602e6" uuid="abd8c5fd3b0524a6630f65cad6dc27f6c58e2a3e" name="Audio Out" x="672" y="224">
      <params/>
      <attribs/>
   </obj>
   <nets>
      <net>
         <source obj="interp_1" outlet="o"/>
         <dest obj="+_1" inlet="in2"/>
      </net>
      <net>
         <source obj="+_1" outlet="out"/>
         <dest obj="sin_3" inlet="phase"/>
      </net>
      <net>
         <source obj="sin_3" outlet="out"/>
         <dest obj="*c_2" inlet="in"/>
      </net>
      <net>
         <source obj="div_1" outlet="out"/>
         <dest obj="*_2" inlet="b"/>
      </net>
      <net>
         <source obj="*c_2" outlet="out"/>
         <dest obj="Audio Out" inlet="outlet"/>
      </net>
      <net>
         <source obj="width" outlet="inlet"/>
         <dest obj="div_1" inlet="in"/>
      </net>
      <net>
         <source obj="phasor" outlet="inlet"/>
         <dest obj="+_1" inlet="in1"/>
      </net>
      <net>
         <source obj="offset" outlet="out"/>
         <dest obj="*_2" inlet="a"/>
      </net>
      <net>
         <source obj="*_2" outlet="result"/>
         <dest obj="interp_1" inlet="i"/>
      </net>
   </nets>
   <settings>
      <subpatchmode>no</subpatchmode>
   </settings>
   <notes><![CDATA[]]></notes>
   <windowPos>
      <x>0</x>
      <y>0</y>
      <width>859</width>
      <height>688</height>
   </windowPos>
</patch-1.0>