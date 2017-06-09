// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.36 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.36;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:34150,y:32328,varname:node_4013,prsc:2|diff-9649-OUT,spec-4466-OUT,gloss-4109-OUT,normal-741-OUT;n:type:ShaderForge.SFN_Get,id:932,x:32711,y:32567,varname:node_932,prsc:2|IN-9281-OUT;n:type:ShaderForge.SFN_Tex2d,id:5410,x:28148,y:31853,ptovrint:False,ptlb:ReflectionTex,ptin:_ReflectionTex,varname:_ReflectionTex,prsc:1,glob:False,taghide:True,taghdr:False,tagprd:True,tagnsco:True,tagnrm:False,ntxv:0,isnm:False|UVIN-2055-OUT;n:type:ShaderForge.SFN_ScreenPos,id:7248,x:26912,y:31700,varname:node_7248,prsc:2,sctp:2;n:type:ShaderForge.SFN_Append,id:3759,x:27267,y:31719,varname:node_3759,prsc:2|A-7248-U,B-7248-V;n:type:ShaderForge.SFN_Multiply,id:4914,x:30400,y:31838,varname:node_4914,prsc:0|A-3006-OUT,B-7591-OUT;n:type:ShaderForge.SFN_Slider,id:7591,x:30302,y:32018,ptovrint:False,ptlb:ReflectionsIntensity,ptin:_ReflectionsIntensity,varname:_ReflectionsIntensity,prsc:1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Set,id:9281,x:30684,y:31732,varname:FlatMirror,prsc:0|IN-4914-OUT;n:type:ShaderForge.SFN_Tex2d,id:7213,x:32195,y:32458,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:1,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:1,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:1517,x:30072,y:33712,varname:node_1517,prsc:2|NRM-2880-OUT,EXP-4600-OUT;n:type:ShaderForge.SFN_NormalVector,id:2880,x:29812,y:33567,prsc:2,pt:True;n:type:ShaderForge.SFN_Multiply,id:9903,x:32758,y:32631,varname:node_9903,prsc:2|A-932-OUT,B-4349-OUT;n:type:ShaderForge.SFN_Dot,id:9405,x:30318,y:33833,varname:node_9405,prsc:2,dt:0|A-1517-OUT,B-3573-OUT;n:type:ShaderForge.SFN_LightVector,id:3573,x:30073,y:33975,varname:node_3573,prsc:2;n:type:ShaderForge.SFN_Exp,id:4600,x:29809,y:33834,varname:node_4600,prsc:2,et:1|IN-1285-OUT;n:type:ShaderForge.SFN_Slider,id:8576,x:29248,y:34008,ptovrint:False,ptlb:Reflection Fresnel,ptin:_ReflectionFresnel,varname:_ReflectionFresnel,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:1285,x:29613,y:33888,varname:node_1285,prsc:2|IN-8576-OUT;n:type:ShaderForge.SFN_Set,id:2076,x:30558,y:33761,varname:Fresnel,prsc:1|IN-9405-OUT;n:type:ShaderForge.SFN_Get,id:4349,x:32723,y:32806,varname:node_4349,prsc:2|IN-2076-OUT;n:type:ShaderForge.SFN_Tex2d,id:7450,x:26872,y:32321,ptovrint:False,ptlb:normal,ptin:_normal,varname:_normal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Append,id:6365,x:27205,y:32157,varname:node_6365,prsc:2|A-7450-R,B-7450-G;n:type:ShaderForge.SFN_Multiply,id:9908,x:27508,y:32165,varname:node_9908,prsc:2|A-6365-OUT,B-1587-OUT;n:type:ShaderForge.SFN_Slider,id:1587,x:27409,y:32335,ptovrint:False,ptlb:Normal Jitter,ptin:_NormalJitter,varname:_NormalJitter,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:4817,x:28565,y:32364,varname:NormalMap,prsc:0|IN-7450-RGB;n:type:ShaderForge.SFN_Get,id:741,x:33602,y:32641,varname:node_741,prsc:2|IN-4817-OUT;n:type:ShaderForge.SFN_Add,id:8816,x:27267,y:31871,varname:node_8816,prsc:2|A-7248-U,B-3496-OUT;n:type:ShaderForge.SFN_Add,id:2055,x:27882,y:31854,varname:node_2055,prsc:2|A-3759-OUT,B-8818-OUT;n:type:ShaderForge.SFN_Multiply,id:8818,x:27734,y:32050,varname:node_8818,prsc:2|A-3238-OUT,B-9908-OUT;n:type:ShaderForge.SFN_Append,id:3238,x:27508,y:31980,varname:node_3238,prsc:2|A-8816-OUT,B-8816-OUT;n:type:ShaderForge.SFN_Get,id:4466,x:33602,y:32491,varname:node_4466,prsc:2|IN-7828-OUT;n:type:ShaderForge.SFN_Set,id:7828,x:33616,y:31422,varname:Specular,prsc:0|IN-6814-OUT;n:type:ShaderForge.SFN_Slider,id:8908,x:32759,y:31451,ptovrint:False,ptlb:Specular Power,ptin:_SpecularPower,varname:_SpecularPower,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Set,id:4156,x:34985,y:31839,varname:Gloss,prsc:2|IN-9894-OUT;n:type:ShaderForge.SFN_Get,id:4109,x:33602,y:32568,varname:node_4109,prsc:2|IN-4156-OUT;n:type:ShaderForge.SFN_Slider,id:5101,x:34173,y:32107,ptovrint:False,ptlb:Glosness,ptin:_Glosness,varname:_Glosness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:9894,x:34684,y:31942,varname:node_9894,prsc:2,frmn:1,frmx:11,tomn:0,tomx:1|IN-5101-OUT;n:type:ShaderForge.SFN_Tex2d,id:5824,x:33006,y:31630,ptovrint:False,ptlb:Specular Texture,ptin:_SpecularTexture,varname:_SpecularTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6814,x:33362,y:31430,varname:node_6814,prsc:2|A-8908-OUT,B-5824-RGB;n:type:ShaderForge.SFN_Slider,id:3496,x:26706,y:31985,ptovrint:False,ptlb:Reflection Coordinater,ptin:_ReflectionCoordinater,varname:_ReflectionCoordinater,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:-0.5,max:1;n:type:ShaderForge.SFN_Blend,id:9639,x:32973,y:32459,varname:node_9639,prsc:2,blmd:5,clmp:True|SRC-7213-RGB,DST-9903-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3928,x:28693,y:31676,varname:node_3928,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-5410-RGB;n:type:ShaderForge.SFN_Add,id:3006,x:30178,y:31838,varname:node_3006,prsc:2|A-5410-RGB,B-3372-OUT;n:type:ShaderForge.SFN_Multiply,id:3372,x:29968,y:31662,varname:node_3372,prsc:2|A-5210-OUT,B-2985-OUT;n:type:ShaderForge.SFN_Slider,id:2985,x:29437,y:31968,ptovrint:False,ptlb:Reflection Bright SubScale,ptin:_ReflectionBrightSubScale,varname:_ReflectionBrightSubScale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:2868,x:29276,y:31657,varname:node_2868,prsc:2|IN-7154-OUT;n:type:ShaderForge.SFN_Power,id:5210,x:29711,y:31659,varname:node_5210,prsc:2|VAL-2868-OUT,EXP-1554-OUT;n:type:ShaderForge.SFN_Exp,id:1554,x:29538,y:31704,varname:node_1554,prsc:2,et:1|IN-2985-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7934,x:28691,y:32028,varname:node_7934,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-5410-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:7154,x:28973,y:31657,ptovrint:False,ptlb:Channel Swap,ptin:_ChannelSwap,varname:_ChannelSwap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-7934-OUT,B-3928-OUT;n:type:ShaderForge.SFN_Get,id:9232,x:33475,y:32922,varname:node_9232,prsc:1|IN-6059-OUT;n:type:ShaderForge.SFN_TexCoord,id:5735,x:32792,y:33205,varname:node_5735,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:6753,x:33548,y:33174,varname:node_6753,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-2398-OUT;n:type:ShaderForge.SFN_Set,id:412,x:34008,y:32990,varname:FlatMirrorFade,prsc:1|IN-3658-OUT;n:type:ShaderForge.SFN_Set,id:6059,x:33217,y:32459,varname:FlatMirrorBlended,prsc:1|IN-9639-OUT;n:type:ShaderForge.SFN_Get,id:9649,x:33910,y:32291,varname:node_9649,prsc:2|IN-412-OUT;n:type:ShaderForge.SFN_Add,id:2398,x:33296,y:33245,varname:node_2398,prsc:2|A-5735-V,B-2452-OUT;n:type:ShaderForge.SFN_Slider,id:382,x:32766,y:33468,ptovrint:False,ptlb:Reflection Fade Offset,ptin:_ReflectionFadeOffset,varname:_ReflectionFadeOffset,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:3658,x:33827,y:33053,varname:node_3658,prsc:2|A-9232-OUT,B-5995-OUT,T-6753-OUT;n:type:ShaderForge.SFN_RemapRange,id:2452,x:33111,y:33379,varname:node_2452,prsc:2,frmn:0,frmx:2,tomn:0,tomx:1|IN-382-OUT;n:type:ShaderForge.SFN_Get,id:5995,x:33475,y:33063,varname:node_5995,prsc:2|IN-2530-OUT;n:type:ShaderForge.SFN_Set,id:2530,x:32433,y:32619,varname:Albedo,prsc:1|IN-7213-RGB;proporder:5410-7591-7213-8576-7450-1587-8908-5101-5824-3496-2985-7154-382;pass:END;sub:END;*/

Shader "PanguShader/FloorReflectionShader" {
    Properties {
        [HideInInspector][NoScaleOffset][PerRendererData]_ReflectionTex ("ReflectionTex", 2D) = "white" {}
        _ReflectionsIntensity ("ReflectionsIntensity", Range(0, 3)) = 1
        _MainTex ("MainTex", 2D) = "gray" {}
        _ReflectionFresnel ("Reflection Fresnel", Range(0, 1)) = 1
        _normal ("normal", 2D) = "bump" {}
        _NormalJitter ("Normal Jitter", Range(0, 1)) = 0
        _SpecularPower ("Specular Power", Range(0, 1)) = 0
        _Glosness ("Glosness", Range(0, 1)) = 0
        _SpecularTexture ("Specular Texture", 2D) = "white" {}
        _ReflectionCoordinater ("Reflection Coordinater", Range(-1, 1)) = -0.5
        _ReflectionBrightSubScale ("Reflection Bright SubScale", Range(0, 1)) = 0
        [MaterialToggle] _ChannelSwap ("Channel Swap", Float ) = 0
        _ReflectionFadeOffset ("Reflection Fade Offset", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _ReflectionTex;
            uniform half _ReflectionsIntensity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ReflectionFresnel;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform fixed _NormalJitter;
            uniform fixed _SpecularPower;
            uniform float _Glosness;
            uniform sampler2D _SpecularTexture; uniform float4 _SpecularTexture_ST;
            uniform float _ReflectionCoordinater;
            uniform float _ReflectionBrightSubScale;
            uniform fixed _ChannelSwap;
            uniform float _ReflectionFadeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD11;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                fixed3 NormalMap = _normal_var.rgb;
                float3 normalLocal = NormalMap;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float Gloss = (_Glosness*0.1+-0.1);
                float gloss = Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _SpecularTexture_var = tex2D(_SpecularTexture,TRANSFORM_TEX(i.uv0, _SpecularTexture));
                fixed3 Specular = (_SpecularPower*_SpecularTexture_var.rgb);
                float3 specularColor = Specular;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                half4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_8816 = (sceneUVs.r+_ReflectionCoordinater);
                float2 node_2055 = (float2(sceneUVs.r,sceneUVs.g)+(float2(node_8816,node_8816)*(float2(_normal_var.r,_normal_var.g)*_NormalJitter)));
                half4 _ReflectionTex_var = tex2D(_ReflectionTex,node_2055);
                fixed3 FlatMirror = ((_ReflectionTex_var.rgb+(pow((1.0 - lerp( _ReflectionTex_var.rgb.g, _ReflectionTex_var.rgb.r, _ChannelSwap )),exp2(_ReflectionBrightSubScale))*_ReflectionBrightSubScale))*_ReflectionsIntensity);
                half Fresnel = dot(pow(1.0-max(0,dot(normalDirection, viewDirection)),exp2((1.0 - _ReflectionFresnel))),lightDirection);
                float3 node_9903 = (FlatMirror*Fresnel);
                half3 FlatMirrorBlended = saturate(max(_MainTex_var.rgb,node_9903));
                half3 node_9232 = FlatMirrorBlended;
                half3 Albedo = _MainTex_var.rgb;
                float node_6753 = (i.uv0.g+(_ReflectionFadeOffset*0.5+0.0)).r;
                half3 FlatMirrorFade = lerp(node_9232,Albedo,node_6753);
                float3 diffuseColor = FlatMirrorFade;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _ReflectionTex;
            uniform half _ReflectionsIntensity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ReflectionFresnel;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform fixed _NormalJitter;
            uniform fixed _SpecularPower;
            uniform float _Glosness;
            uniform sampler2D _SpecularTexture; uniform float4 _SpecularTexture_ST;
            uniform float _ReflectionCoordinater;
            uniform float _ReflectionBrightSubScale;
            uniform fixed _ChannelSwap;
            uniform float _ReflectionFadeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                fixed3 NormalMap = _normal_var.rgb;
                float3 normalLocal = NormalMap;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float Gloss = (_Glosness*0.1+-0.1);
                float gloss = Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _SpecularTexture_var = tex2D(_SpecularTexture,TRANSFORM_TEX(i.uv0, _SpecularTexture));
                fixed3 Specular = (_SpecularPower*_SpecularTexture_var.rgb);
                float3 specularColor = Specular;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                half4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_8816 = (sceneUVs.r+_ReflectionCoordinater);
                float2 node_2055 = (float2(sceneUVs.r,sceneUVs.g)+(float2(node_8816,node_8816)*(float2(_normal_var.r,_normal_var.g)*_NormalJitter)));
                half4 _ReflectionTex_var = tex2D(_ReflectionTex,node_2055);
                fixed3 FlatMirror = ((_ReflectionTex_var.rgb+(pow((1.0 - lerp( _ReflectionTex_var.rgb.g, _ReflectionTex_var.rgb.r, _ChannelSwap )),exp2(_ReflectionBrightSubScale))*_ReflectionBrightSubScale))*_ReflectionsIntensity);
                half Fresnel = dot(pow(1.0-max(0,dot(normalDirection, viewDirection)),exp2((1.0 - _ReflectionFresnel))),lightDirection);
                float3 node_9903 = (FlatMirror*Fresnel);
                half3 FlatMirrorBlended = saturate(max(_MainTex_var.rgb,node_9903));
                half3 node_9232 = FlatMirrorBlended;
                half3 Albedo = _MainTex_var.rgb;
                float node_6753 = (i.uv0.g+(_ReflectionFadeOffset*0.5+0.0)).r;
                half3 FlatMirrorFade = lerp(node_9232,Albedo,node_6753);
                float3 diffuseColor = FlatMirrorFade;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _ReflectionTex;
            uniform half _ReflectionsIntensity;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ReflectionFresnel;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform fixed _NormalJitter;
            uniform fixed _SpecularPower;
            uniform float _Glosness;
            uniform sampler2D _SpecularTexture; uniform float4 _SpecularTexture_ST;
            uniform float _ReflectionCoordinater;
            uniform float _ReflectionBrightSubScale;
            uniform fixed _ChannelSwap;
            uniform float _ReflectionFadeOffset;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                half4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_8816 = (sceneUVs.r+_ReflectionCoordinater);
                float3 _normal_var = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(i.uv0, _normal)));
                float2 node_2055 = (float2(sceneUVs.r,sceneUVs.g)+(float2(node_8816,node_8816)*(float2(_normal_var.r,_normal_var.g)*_NormalJitter)));
                half4 _ReflectionTex_var = tex2D(_ReflectionTex,node_2055);
                fixed3 FlatMirror = ((_ReflectionTex_var.rgb+(pow((1.0 - lerp( _ReflectionTex_var.rgb.g, _ReflectionTex_var.rgb.r, _ChannelSwap )),exp2(_ReflectionBrightSubScale))*_ReflectionBrightSubScale))*_ReflectionsIntensity);
                half Fresnel = dot(pow(1.0-max(0,dot(normalDirection, viewDirection)),exp2((1.0 - _ReflectionFresnel))),lightDirection);
                float3 node_9903 = (FlatMirror*Fresnel);
                half3 FlatMirrorBlended = saturate(max(_MainTex_var.rgb,node_9903));
                half3 node_9232 = FlatMirrorBlended;
                half3 Albedo = _MainTex_var.rgb;
                float node_6753 = (i.uv0.g+(_ReflectionFadeOffset*0.5+0.0)).r;
                half3 FlatMirrorFade = lerp(node_9232,Albedo,node_6753);
                float3 diffColor = FlatMirrorFade;
                float4 _SpecularTexture_var = tex2D(_SpecularTexture,TRANSFORM_TEX(i.uv0, _SpecularTexture));
                fixed3 Specular = (_SpecularPower*_SpecularTexture_var.rgb);
                float3 specColor = Specular;
                float Gloss = (_Glosness*0.1+-0.1);
                float roughness = 1.0 - Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
