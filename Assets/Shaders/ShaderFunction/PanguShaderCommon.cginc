#ifndef PANGU_SHADER_COMMON_INCLUDED
#define PANGU_SHADER_COMMON_INCLUDED

#include "UnityCG.cginc"

uniform sampler2D _MainTex; uniform float4 _MainTex_ST;

struct VertexInput 
{
	float4 vertex : POSITION;
	float2 texcoord0 : TEXCOORD0;
	float2 texcoord1 : TEXCOORD1;
};

struct VertexOutput 
{
	float4 pos : SV_POSITION;
	float2 uv0 : TEXCOORD0;
	float2 uv1 : TEXCOORD1;
};

//Normal blender common function by jp shader function library 
inline fixed3 fNormalBlender( fixed4 normalA , fixed4 normalB , fixed4 color , fixed blendScale)
{
    fixed4 nrm = normalA * (color.r + (1 - blendScale))  +  normalB * (color.g) ;
    return UnpackNormal(normalize(nrm));
}
			

//fast lerp simple function
inline fixed3 flerp(fixed3 a, fixed3 b, fixed t)
{
	return a * (1 - t) + b * t;
}

inline fixed4 flerp(fixed4 a, fixed4 b, fixed t)
{
	return a * (1 - t) + b * t;
}

inline fixed3 PanguGammaToLinear(half3 sRGB)
{
	return sRGB * (sRGB * (sRGB * 0.305306011h + 0.682171111h) + 0.012522878h);
}

//indexed Int simple power function
inline fixed fPow(fixed x, uint y)
{
	if (y == 0)return 1;
	if (y == 1)
		return x;
		float x2 = x * x;
	if (y == 2)return x2;
	if (y == 3)
		return x2 * x;
		float x4 = x2 * x2;
	if (y == 4)return x4;
	if (y == 5)return x4 * x;
	if (y == 6)return x4 * x2;
	if (y == 7)
		return x4 * x2 * x;
		float x8 = x4 * x4;
	if (y == 8)return x8;
	if (y == 9)return x8 * x;
	if (y == 10)return x8 * x2;
	if (y == 11)return x8 * x2 * x;
	if (y == 12)return x8 * x4;
	if (y == 13)return x8 * x4 * x;
	if (y == 14)
		return x8 * x4 * x2;
		float x16 = x8 * x8;
	if (y == 16)return x16;
	if (y == 17)return x16 * x;
	if (y == 18)return x16 * x2;
	if (y == 20)return x16 * x4;
	if (y == 24)return x16 * x8;
	if (y == 32)return x16 * x16;
	return pow(x, y);
}

 inline float3 rgb2hsv(float3 c) 
{
    float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
    float4 p = lerp(float4(c.bg, K.wz), float4(c.gb, K.xy), step(c.b, c.g));
    float4 q = lerp(float4(p.xyw, c.r), float4(c.r, p.yzx), step(p.x, c.r));

    float d = q.x - min(q.w, q.y);
    float e = 1.0e-10;
    return float3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

inline float3 hsv2rgb(float3 c) 
{
    c = float3(c.x, clamp(c.yz, 0.0, 1.0));
    float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * lerp(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

#ifndef LIGHTMAPDECODE
VertexOutput vert (VertexInput v) 
{
	VertexOutput o = (VertexOutput)0;
	o.uv0 = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
	o.uv1 = v.texcoord0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
	o.pos = UnityObjectToClipPos(v.vertex );
	return o;
}

inline float3 FetchedLightmapUnlit( float2 uv1 )
{
	half2 lightmapUV = uv1;
	half4 bakedColorTex = UNITY_SAMPLE_TEX2D(unity_Lightmap, lightmapUV );
	return DecodeLightmap(bakedColorTex);
}

float4 frag(VertexOutput i) : COLOR 
{
	
	float4 _Texture_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv1, _MainTex));
	float3 ldrLightmap = FetchedLightmapUnlit( i.uv0 );
	float3 finalColor = (_Texture_var.rgb * ldrLightmap);
	return fixed4(finalColor,1);
}
#endif
#endif // PANGU_SHADER_COMMON_INCLUDED

