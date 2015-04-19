Shader "Custom/LipStick" {
Properties {	
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		
		_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
		_LipStick ("LipStick", 2D) = "black" {}
		
		_RedMult ("R", Color) = (1,1,1,1)
		_GreenMult ("G", Color) = (1,1,1,1)
		_BlueMult ("B", Color) = (1,1,1,1)
}
SubShader {
	Tags {"Queue"="AlphaTest" "IgnoreProjector"="True" "RenderType"="TransparentCutout"}
	LOD 100

	Lighting Off

	Pass {  
		CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata_t {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
			};

			sampler2D _MainTex;
			sampler2D _LipStick;
			float4 _MainTex_ST;
			fixed _Cutoff;

			fixed4 _RedMult;
			fixed4 _GreenMult;
			fixed4 _BlueMult;
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 c = tex2D(_MainTex, i.texcoord);
				clip(c.a - _Cutoff);
				UNITY_APPLY_FOG(i.fogCoord, col);
				fixed4 l = tex2D (_LipStick, i.texcoord);
				if(l.r==1){
					c*=_RedMult;
				}else if(l.g==1){
					c*=_GreenMult;
				}else if(l.b==1){
					c*=_BlueMult;
				}
				return c;
			}
		ENDCG
	}
}

}
