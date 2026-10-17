###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt)
.class final synthetic Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;
.super Ljava/lang/Object;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n80#2,11:480\n80#2,11:491\n80#2,11:502\n80#2,11:513\n103#2:524\n80#2,6:525\n104#2:531\n90#2:532\n105#2:533\n86#2,4:534\n80#2,11:538\n103#2:549\n80#2,6:550\n104#2,2:556\n90#2:558\n86#2,4:559\n80#2,11:563\n80#2,11:574\n80#2,11:585\n103#2:596\n80#2,6:597\n104#2,2:603\n90#2:605\n86#2,4:606\n103#2:610\n80#2,6:611\n104#2,2:617\n90#2:619\n86#2,4:620\n103#2:624\n80#2,6:625\n104#2,2:631\n90#2:633\n86#2,4:634\n103#2:638\n80#2,6:639\n104#2,2:645\n90#2:647\n86#2,4:648\n103#2:652\n80#2,6:653\n104#2,2:659\n90#2:661\n86#2,4:662\n80#2,11:666\n103#2:677\n80#2,6:678\n104#2,2:684\n90#2:686\n86#2,4:687\n80#2,11:691\n80#2,11:702\n80#2,11:713\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt\n*L\n34#1:480,11\n49#1:491,11\n63#1:502,11\n73#1:513,11\n84#1:524\n84#1:525,6\n84#1:531\n84#1:532\n84#1:533\n84#1:534,4\n95#1:538,11\n110#1:549\n110#1:550,6\n110#1:556,2\n110#1:558\n110#1:559,4\n121#1:563,11\n134#1:574,11\n147#1:585,11\n232#1:596\n232#1:597,6\n232#1:603,2\n232#1:605\n232#1:606,4\n241#1:610\n241#1:611,6\n241#1:617,2\n241#1:619\n241#1:620,4\n277#1:624\n277#1:625,6\n277#1:631,2\n277#1:633\n277#1:634,4\n285#1:638\n285#1:639,6\n285#1:645,2\n285#1:647\n285#1:648,4\n298#1:652\n298#1:653,6\n298#1:659,2\n298#1:661\n298#1:662,4\n403#1:666,11\n411#1:677\n411#1:678,6\n411#1:684,2\n411#1:686\n411#1:687,4\n418#1:691,11\n432#1:702,11\n446#1:713,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001f\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001aJ\u0010\u0000\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u00072\u001a\u0010\u0008\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\"\u0006\u0012\u0002\u0008\u00030\nH\u0001\u00a2\u0006\u0002\u0010\u000b\u001a!\u0010\u000c\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a1\u0010\u0010\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u00020\u00060\u0001j\u0002`\u0007*\u0006\u0012\u0002\u0008\u00030\nH\u0001\u001a!\u0010\u0011\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0007\u001aZ\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u0010\u0015*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u0010\u0018\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00150\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a0\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010\u001e\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007\u001aT\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u0010 \u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a)\u0010!\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010\"\u001a\u00020\u0012H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001a+\u0010$\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010\"\u001a\u00020\u0012H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001aT\u0010%\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u0010 \u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001ai\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001727\u0010 \u001a3\u0008\u0001\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\'H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001aT\u0010)\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u0010 \u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a$\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0008\u0008\u0000\u0010\u000e*\u00020\u001b*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\nH\u0001\u001aA\u0010+\u001a\u0002H,\"\u0008\u0008\u0000\u0010\u000e*\u00020\u001b\"\u0010\u0008\u0001\u0010,*\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0-*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\n2\u0006\u0010.\u001a\u0002H,H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/\u001a?\u0010+\u001a\u0002H,\"\u0008\u0008\u0000\u0010\u000e*\u00020\u001b\"\u000e\u0008\u0001\u0010,*\u0008\u0012\u0004\u0012\u0002H\u000e00*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\n2\u0006\u0010.\u001a\u0002H,H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101\u001a!\u00102\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a#\u00103\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a`\u00104\u001a\u0008\u0012\u0004\u0012\u0002H50\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172(\u00106\u001a$\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H50\n0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a)\u00107\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u00108\u001a\u0002H\u000eH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00109\u001a!\u0010:\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a)\u0010;\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u00108\u001a\u0002H\u000eH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00109\u001a#\u0010<\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001aZ\u0010=\u001a\u0008\u0012\u0004\u0012\u0002H50\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u00106\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H50\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001ao\u0010>\u001a\u0008\u0012\u0004\u0012\u0002H50\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001727\u00106\u001a3\u0008\u0001\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H50\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\'H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001au\u0010?\u001a\u0008\u0012\u0004\u0012\u0002H50\n\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u00105*\u00020\u001b*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001729\u00106\u001a5\u0008\u0001\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\"\u0012\u0004\u0012\u0002H\u000e\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H50\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\'H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001a`\u0010@\u001a\u0008\u0012\u0004\u0012\u0002H50\n\"\u0004\u0008\u0000\u0010\u000e\"\u0008\u0008\u0001\u00105*\u00020\u001b*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172$\u00106\u001a \u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H50\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a?\u0010A\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u001a\u0010B\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0Cj\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e`DH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010E\u001a?\u0010F\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u001a\u0010B\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0Cj\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e`DH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010E\u001a!\u0010G\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a$\u0010H\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0008\u0008\u0000\u0010\u000e*\u00020\u001b*\n\u0012\u0006\u0012\u0004\u0018\u0001H\u000e0\nH\u0007\u001a!\u0010I\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a#\u0010J\u001a\u0004\u0018\u0001H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a0\u0010K\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010\u001e\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007\u001aT\u0010L\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\"\u0010 \u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0019H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a9\u0010M\u001a\u0002H,\"\u0004\u0008\u0000\u0010\u000e\"\u000e\u0008\u0001\u0010,*\u0008\u0012\u0004\u0012\u0002H\u000e00*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010.\u001a\u0002H,H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101\u001a;\u0010N\u001a\u0002H,\"\u0004\u0008\u0000\u0010\u000e\"\u0010\u0008\u0001\u0010,*\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000e0-*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0006\u0010.\u001a\u0002H,H\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010/\u001a?\u0010O\u001a\u000e\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002HQ0P\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010Q*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002HQ0R0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001aU\u0010O\u001a\u0002HS\"\u0004\u0008\u0000\u0010\u0015\"\u0004\u0008\u0001\u0010Q\"\u0018\u0008\u0002\u0010S*\u0012\u0012\u0006\u0008\u0000\u0012\u0002H\u0015\u0012\u0006\u0008\u0000\u0012\u0002HQ0T*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0015\u0012\u0004\u0012\u0002HQ0R0\n2\u0006\u0010.\u001a\u0002HSH\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010U\u001a\'\u0010V\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0W\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\'\u0010X\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0Y\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0081@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\'\u0010Z\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0[\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\nH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u001a.\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000e0]0\n\"\u0004\u0008\u0000\u0010\u000e*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017H\u0007\u001a?\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H50R0\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u00105*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u0002H50\nH\u0087\u0004\u001az\u0010^\u001a\u0008\u0012\u0004\u0012\u0002HQ0\n\"\u0004\u0008\u0000\u0010\u000e\"\u0004\u0008\u0001\u00105\"\u0004\u0008\u0002\u0010Q*\u0008\u0012\u0004\u0012\u0002H\u000e0\n2\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u0002H50\n2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u001726\u00106\u001a2\u0012\u0013\u0012\u0011H\u000e\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(`\u0012\u0013\u0012\u0011H5\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(a\u0012\u0004\u0012\u0002HQ0\u0019H\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006b"
    }
    d2 = {
        "consumesAll",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "Lkotlinx/coroutines/CompletionHandler;",
        "channels",
        "",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;",
        "any",
        "",
        "E",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "consumes",
        "count",
        "",
        "distinct",
        "distinctBy",
        "K",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "selector",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;",
        "drop",
        "n",
        "dropWhile",
        "predicate",
        "elementAt",
        "index",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "elementAtOrNull",
        "filter",
        "filterIndexed",
        "Lkotlin/Function3;",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;",
        "filterNot",
        "filterNotNull",
        "filterNotNullTo",
        "C",
        "",
        "destination",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "first",
        "firstOrNull",
        "flatMap",
        "R",
        "transform",
        "indexOf",
        "element",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "last",
        "lastIndexOf",
        "lastOrNull",
        "map",
        "mapIndexed",
        "mapIndexedNotNull",
        "mapNotNull",
        "maxWith",
        "comparator",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "minWith",
        "none",
        "requireNoNulls",
        "single",
        "singleOrNull",
        "take",
        "takeWhile",
        "toChannel",
        "toCollection",
        "toMap",
        "",
        "V",
        "Lkotlin/Pair;",
        "M",
        "",
        "(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toMutableList",
        "",
        "toMutableSet",
        "",
        "toSet",
        "",
        "withIndex",
        "Lkotlin/collections/IndexedValue;",
        "zip",
        "other",
        "a",
        "b",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/channels/ChannelsKt"
.end annotation


# direct methods
.method public static final synthetic any(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 402
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    packed-switch v2, :pswitch_data_62

    .line 676
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 402
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v1, 0x0

    .local v1, "$i$a$-consume-ChannelsKt__DeprecatedKt$any$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v3, 0x0

    :try_start_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    move-object v6, p1

    goto :goto_54

    .line 672
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$any$2":I
    :catchall_38
    move-exception v1

    .local v2, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v3, "cause$iv":Ljava/lang/Throwable;
    goto :goto_59

    .line 402
    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 403
    .local p0, "$this$any":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v2, p0

    .end local p0    # "$this$any":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 666
    .local p0, "$i$f$consume":I
    nop

    .line 669
    const/4 v3, 0x0

    .line 670
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 671
    move-object v4, v2

    .local v4, "$this$any_u24lambda_u2d15":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 404
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$any$2":I
    :try_start_44
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_58

    .end local v4    # "$this$any_u24lambda_u2d15":Lkotlinx/coroutines/channels/ReceiveChannel;
    if-ne v6, v1, :cond_54

    .line 402
    return-object v1

    .line 676
    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$any$2":I
    .end local p0    # "$i$f$consume":I
    :cond_54
    :goto_54
    invoke-static {v2, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v6

    .line 672
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    :catchall_58
    move-exception v1

    .line 673
    .local v1, "e$iv":Ljava/lang/Throwable;
    :goto_59
    move-object v3, v1

    .line 674
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_5b
    throw v1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 675
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_5c
    move-exception v1

    .line 676
    invoke-static {v2, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_2c
    .end packed-switch
.end method

.method public static final consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;
    .registers 2
    .param p0, "$this$consumes"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 478
    return-object v0
.end method

.method public static final varargs consumesAll([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;
    .registers 2
    .param p0, "channels"    # [Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;-><init>([Lkotlinx/coroutines/channels/ReceiveChannel;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 30
    return-object v0
.end method

.method public static final synthetic count(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 409
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_c2

    .line 412
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 409
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 v2, 0x0

    .local v2, "$i$f$consume":I
    const/4 v4, 0x0

    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v6, 0x0

    .local v6, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    .local v8, "count":Lkotlin/jvm/internal/Ref$IntRef;
    :try_start_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_82

    .line 687
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v8    # "count":Lkotlin/jvm/internal/Ref$IntRef;
    :catchall_4a
    move-exception v1

    goto/16 :goto_b9

    .line 409
    .end local v2    # "$i$f$consume":I
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    :pswitch_4d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 410
    .local p0, "$this$count":Lkotlinx/coroutines/channels/ReceiveChannel;
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 411
    .local v2, "count":Lkotlin/jvm/internal/Ref$IntRef;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v4, 0x0

    .line 677
    .local v4, "$i$f$consumeEach":I
    move-object v7, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 678
    .local p0, "$i$f$consume":I
    nop

    .line 681
    const/4 v6, 0x0

    .line 682
    .restart local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 683
    move-object v5, v7

    .local v5, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v8, 0x0

    .line 684
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_5e
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v9
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_b6

    move-object v5, v2

    move v2, p0

    move p0, v4

    move v4, v8

    move-object v8, v5

    move-object v5, v9

    .end local v5    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$f$consume":I
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "count":Lkotlin/jvm/internal/Ref$IntRef;
    .local p0, "$i$f$consumeEach":I
    :goto_68
    :try_start_68
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    invoke-interface {v5, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_74
    .catchall {:try_start_68 .. :try_end_74} :catchall_4a

    if-ne v9, v1, :cond_77

    .line 409
    return-object v1

    .line 684
    :cond_77
    move-object v12, v0

    move-object v0, p1

    move-object p1, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v12

    .end local v2    # "$i$f$consume":I
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$i$f$consume":I
    .local v5, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v7, "cause$iv$iv":Ljava/lang/Throwable;
    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v9, "count":Lkotlin/jvm/internal/Ref$IntRef;
    :goto_82
    :try_start_82
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9e

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .local p1, "e$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 411
    .local v10, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$count$2":I
    iget v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v11, v3

    iput v11, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .end local v10    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$count$2":I
    .end local p1    # "e$iv":Ljava/lang/Object;
    goto :goto_68

    .line 685
    :cond_9e
    nop

    .end local v5    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a1
    .catchall {:try_start_82 .. :try_end_a1} :catchall_ad

    .line 686
    invoke-static {v8, v7}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 683
    .end local v7    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 685
    .end local v4    # "$i$f$consume":I
    nop

    .line 412
    .end local p0    # "$i$f$consumeEach":I
    iget p0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 687
    .end local v9    # "count":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v4    # "$i$f$consume":I
    .restart local v7    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    :catchall_ad
    move-exception p1

    move-object v2, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v2

    move v2, v4

    move-object v6, v7

    move-object v7, v8

    goto :goto_b9

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "$i$f$consumeEach":I
    .restart local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    .local p1, "$result":Ljava/lang/Object;
    :catchall_b6
    move-exception v1

    move v2, p0

    move p0, v4

    .line 688
    .end local v4    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$consume":I
    .local p0, "$i$f$consumeEach":I
    :goto_b9
    move-object v3, v1

    .line 689
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v3, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$i$f$consume":I
    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_bb
    throw v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_bc

    .line 690
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$f$consume":I
    .restart local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_bc
    move-exception v1

    .line 686
    invoke-static {v7, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic distinct(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4
    .param p0, "$this$distinct"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 378
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->distinctBy$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final distinctBy(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$distinctBy"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "selector"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TK;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 385
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 394
    return-object p1
.end method

.method public static synthetic distinctBy$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 381
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 382
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 381
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->distinctBy(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic drop(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$drop"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "n"    # I
    .param p2, "context"    # Lkotlin/coroutines/CoroutineContext;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 160
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;-><init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    .end local p2    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p2

    .line 172
    return-object p2
.end method

.method public static synthetic drop$default(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 159
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->drop(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic dropWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$dropWhile"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 180
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 190
    return-object p1
.end method

.method public static synthetic dropWhile$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 176
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 177
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 176
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->dropWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic elementAt(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 15
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const/16 v3, 0x2e

    const-string v4, "ReceiveChannel doesn\'t contain element at index "

    packed-switch v2, :pswitch_data_ea

    .line 490
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_30
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 p1, 0x0

    .local p1, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$1:I

    .local v2, "count":I
    iget v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$0:I

    .local v5, "index":I
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v8, 0x0

    :try_start_3f
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_80

    .line 486
    .end local v2    # "count":I
    .end local v5    # "index":I
    .end local p1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    :catchall_4b
    move-exception p1

    .local v7, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "cause$iv":Ljava/lang/Throwable;
    goto/16 :goto_e2

    .line 34
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_4e
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$elementAt":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "index":I
    move-object v7, p0

    .end local p0    # "$this$elementAt":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 480
    .local p0, "$i$f$consume":I
    nop

    .line 483
    const/4 v8, 0x0

    .line 484
    .restart local v8    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 485
    move-object v2, v7

    .local v2, "$this$elementAt_u24lambda_u2d0":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 35
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    if-ltz p1, :cond_c7

    .line 37
    const/4 v6, 0x0

    .line 38
    .local v6, "count":I
    :try_start_5b
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v9

    move v2, v5

    move v5, p1

    move p1, v2

    move v2, v6

    move-object v6, v9

    .end local v6    # "count":I
    .local v2, "count":I
    .local v5, "index":I
    .local p1, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    :goto_64
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$0:I

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->I$1:I

    const/4 v9, 0x1

    iput v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_c5

    if-ne v9, v1, :cond_76

    .line 34
    return-object v1

    .line 38
    :cond_76
    move-object v11, v0

    move-object v0, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v5

    move v5, v2

    move-object v2, v1

    move-object v1, v11

    .end local v2    # "count":I
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v5, "count":I
    .local v6, "index":I
    :goto_80
    :try_start_80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9e

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_8c
    .catchall {:try_start_80 .. :try_end_8c} :catchall_bf

    .line 40
    .local p2, "element":Ljava/lang/Object;
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "count":I
    .local v10, "count":I
    if-ne v6, v5, :cond_95

    .line 41
    .end local v6    # "index":I
    nop

    .line 490
    .end local v10    # "count":I
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    .end local p2    # "element":Ljava/lang/Object;
    invoke-static {v8, v9}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object p2

    .line 40
    .restart local v6    # "index":I
    .local v8, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "count":I
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    :cond_95
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v2, v10

    .local v9, "cause$iv":Ljava/lang/Throwable;
    goto :goto_64

    .line 38
    .end local v8    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "cause$iv":Ljava/lang/Throwable;
    .end local v10    # "count":I
    .restart local v5    # "count":I
    :cond_9e
    move-object v7, v8

    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v8, v9

    .line 43
    .local v8, "cause$iv":Ljava/lang/Throwable;
    :try_start_a0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    throw p2
    :try_end_bb
    .catchall {:try_start_a0 .. :try_end_bb} :catchall_bb

    .line 486
    .end local v5    # "count":I
    .end local v6    # "index":I
    .end local p1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    :catchall_bb
    move-exception p1

    move-object p2, v0

    move-object v0, v1

    goto :goto_e2

    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    :catchall_bf
    move-exception p1

    move-object v7, v8

    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v8, v9

    move-object p2, v0

    move-object v0, v1

    .restart local v8    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_e2

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local p2, "$result":Ljava/lang/Object;
    :catchall_c5
    move-exception p1

    goto :goto_e2

    .line 36
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    .local p1, "index":I
    :cond_c7
    :try_start_c7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_e2
    .catchall {:try_start_c7 .. :try_end_e2} :catchall_c5

    .line 487
    .end local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAt$2":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .local p1, "e$iv":Ljava/lang/Throwable;
    .restart local p2    # "$result":Ljava/lang/Object;
    :goto_e2
    move-object v1, p1

    .line 488
    .end local v8    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_e4
    throw p1
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e5

    .line 489
    .end local p1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_e5
    move-exception p1

    .line 490
    invoke-static {v7, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_30
    .end packed-switch
.end method

.method public static final synthetic elementAtOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_ba

    .line 501
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$1:I

    .local v2, "count":I
    iget v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$0:I

    .local v4, "index":I
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    move-object v8, v5

    move-object v7, v6

    move-object v5, v3

    move v6, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_82

    .line 497
    .end local v2    # "count":I
    .end local v4    # "index":I
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    :catchall_47
    move-exception p0

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_b1

    .line 48
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    :pswitch_4a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 49
    .local p0, "$this$elementAtOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "index":I
    nop

    .end local p0    # "$this$elementAtOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 491
    .local v2, "$i$f$consume":I
    nop

    .line 494
    nop

    .line 495
    nop

    .line 496
    move-object v4, p0

    .local v4, "$this$elementAtOrNull_u24lambda_u2d1":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 50
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    if-gez p1, :cond_5b

    .line 51
    .end local p1    # "index":I
    nop

    .line 501
    .end local v2    # "$i$f$consume":I
    .end local v4    # "$this$elementAtOrNull_u24lambda_u2d1":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    invoke-static {p0, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 50
    .restart local v2    # "$i$f$consume":I
    .restart local v4    # "$this$elementAtOrNull_u24lambda_u2d1":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    .restart local p1    # "index":I
    :cond_5b
    move-object v6, p0

    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object p0, v3

    .line 52
    .local p0, "cause$iv":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 53
    .local v7, "count":I
    :try_start_5e
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v8
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_ad

    move-object v4, p0

    move p0, v5

    move v5, p1

    move p1, v2

    move v2, v7

    .end local v7    # "count":I
    .local v2, "count":I
    .local v4, "cause$iv":Ljava/lang/Throwable;
    .local v5, "index":I
    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    .local p1, "$i$f$consume":I
    :goto_67
    :try_start_67
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$0:I

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->I$1:I

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    invoke-interface {v8, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_76
    .catchall {:try_start_67 .. :try_end_76} :catchall_aa

    if-ne v7, v1, :cond_79

    .line 48
    return-object v1

    .line 53
    :cond_79
    move-object v10, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move v6, v5

    move-object v5, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v10

    .end local v2    # "count":I
    .end local v5    # "index":I
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "count":I
    .local v6, "index":I
    :goto_82
    :try_start_82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9f

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_8e
    .catchall {:try_start_82 .. :try_end_8e} :catchall_a4

    .line 54
    .local p2, "element":Ljava/lang/Object;
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "count":I
    .local v9, "count":I
    if-ne v6, v4, :cond_97

    .line 55
    .end local v6    # "index":I
    nop

    .line 501
    .end local v9    # "count":I
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "element":Ljava/lang/Object;
    invoke-static {v7, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object p2

    .line 54
    .restart local v6    # "index":I
    .local v7, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v9    # "count":I
    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    .restart local p1    # "$i$f$consume":I
    :cond_97
    move-object v4, v5

    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move v5, v6

    move-object v6, v7

    move v2, v9

    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_67

    .line 57
    .end local v6    # "index":I
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "count":I
    .local v4, "count":I
    :cond_9f
    nop

    .line 501
    .end local v4    # "count":I
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$elementAtOrNull$2":I
    .end local p1    # "$i$f$consume":I
    invoke-static {v7, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 497
    .restart local p1    # "$i$f$consume":I
    :catchall_a4
    move-exception p0

    move-object v6, v7

    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v5

    move-object p2, v0

    move-object v0, v1

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_b1

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v4, "cause$iv":Ljava/lang/Throwable;
    .local p2, "$result":Ljava/lang/Object;
    :catchall_aa
    move-exception p0

    move-object v3, v4

    goto :goto_b1

    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local p1    # "$i$f$consume":I
    .local v2, "$i$f$consume":I
    .local p0, "cause$iv":Ljava/lang/Throwable;
    :catchall_ad
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    move p1, v2

    .line 498
    .end local v2    # "$i$f$consume":I
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .local p0, "e$iv":Ljava/lang/Throwable;
    .restart local p1    # "$i$f$consume":I
    :goto_b1
    move-object v1, p0

    .line 499
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_b3
    throw p0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    .line 500
    .end local p0    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_b4
    move-exception p0

    .line 501
    invoke-static {v6, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p0

    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_2d
    .end packed-switch
.end method

.method public static final filter(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$filter"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 197
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 201
    return-object p1
.end method

.method public static synthetic filter$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 193
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 194
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 193
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->filter(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic filterIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$filterIndexed"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function3;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 209
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 214
    return-object p1
.end method

.method public static synthetic filterIndexed$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 205
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 206
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 205
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->filterIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic filterNot(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5
    .param p0, "$this$filterNot"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 222
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->filter(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic filterNot$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 218
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 219
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 218
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->filterNot(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final filterNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4
    .param p0, "$this$filterNotNull"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    .line 227
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->filter$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 231
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    packed-switch v2, :pswitch_data_b2

    .line 235
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v4, 0x0

    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination":Ljava/util/Collection;
    :try_start_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_48

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_7b

    .line 606
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "destination":Ljava/util/Collection;
    :catchall_48
    move-exception v1

    goto/16 :goto_aa

    .line 231
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 232
    .local p0, "$this$filterNotNullTo":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "destination":Ljava/util/Collection;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 596
    .local v2, "$i$f$consumeEach":I
    move-object v5, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 597
    .local p0, "$i$f$consume":I
    nop

    .line 600
    const/4 v4, 0x0

    .line 601
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 602
    move-object v3, v5

    .local v3, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 603
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_57
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_a7

    move-object v3, p1

    move p1, p0

    move p0, v2

    move v2, v6

    move-object v6, v3

    move-object v3, v7

    .end local v3    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v6, "destination":Ljava/util/Collection;
    .local p0, "$i$f$consumeEach":I
    .local p1, "$i$f$consume":I
    :goto_61
    :try_start_61
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    invoke-interface {v3, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_48

    if-ne v7, v1, :cond_71

    .line 231
    return-object v1

    .line 603
    :cond_71
    move-object v9, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v9

    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "destination":Ljava/util/Collection;
    :goto_7b
    :try_start_7b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_96

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 233
    .local v8, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$2":I
    if-eqz p2, :cond_8d

    invoke-interface {v7, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .end local p2    # "it":Ljava/lang/Object;
    :cond_8d
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$2":I
    goto :goto_61

    .line 604
    :cond_96
    nop

    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_99
    .catchall {:try_start_7b .. :try_end_99} :catchall_9f

    .line 605
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 602
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 604
    .end local p1    # "$i$f$consume":I
    nop

    .line 235
    .end local p0    # "$i$f$consumeEach":I
    return-object v7

    .line 606
    .end local v7    # "destination":Ljava/util/Collection;
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :catchall_9f
    move-exception p2

    move-object v4, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_aa

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$i$f$consumeEach":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    .local p2, "$result":Ljava/lang/Object;
    :catchall_a7
    move-exception v1

    move p1, p0

    move p0, v2

    .line 607
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :goto_aa
    move-object v2, v1

    .line 608
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_ac
    throw v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ad

    .line 609
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_ad
    move-exception v1

    .line 605
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 240
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    packed-switch v2, :pswitch_data_e2

    .line 244
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v5, 0x0

    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    .local v7, "destination":Lkotlinx/coroutines/channels/SendChannel;
    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_67

    move-object v10, p2

    move p2, p1

    move-object p1, v7

    move-object v7, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_ba

    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v3    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_4a
    const/4 p0, 0x0

    .restart local p0    # "$i$f$consumeEach":I
    const/4 p1, 0x0

    .restart local p1    # "$i$f$consume":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v5, 0x0

    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v4, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v6, v4

    .end local v4    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    .local v4, "destination":Lkotlinx/coroutines/channels/SendChannel;
    :try_start_5b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_67

    move-object v7, v0

    move v0, p1

    move-object p1, v4

    move v4, v2

    move-object v2, v7

    move-object v7, v3

    move-object v3, v1

    move-object v1, p2

    goto :goto_96

    .line 620
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    :catchall_67
    move-exception v1

    goto/16 :goto_d9

    .line 240
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_6a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 241
    .local p0, "$this$filterNotNullTo":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "destination":Lkotlinx/coroutines/channels/SendChannel;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 610
    .local v2, "$i$f$consumeEach":I
    move-object v6, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 611
    .local p0, "$i$f$consume":I
    nop

    .line 614
    const/4 v5, 0x0

    .line 615
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 616
    move-object v3, v6

    .local v3, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v4, 0x0

    .line 617
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_76
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_d6

    move-object v10, p2

    move p2, p0

    move p0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    .end local v2    # "$i$f$consumeEach":I
    .end local v3    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local p0, "$i$f$consumeEach":I
    .local p2, "$i$f$consume":I
    :goto_80
    :try_start_80
    iput-object p1, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_cf

    if-ne v3, v2, :cond_90

    .line 240
    return-object v2

    .line 617
    :cond_90
    move-object v10, v0

    move v0, p2

    move-object p2, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v10

    .end local p2    # "$i$f$consume":I
    .local v0, "$i$f$consume":I
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_96
    :try_start_96
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_c0

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 242
    .local v8, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    if-eqz p2, :cond_bb

    iput-object p1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    invoke-interface {p1, p2, v2}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    .end local p2    # "it":Ljava/lang/Object;
    if-ne v9, v3, :cond_b5

    .line 240
    return-object v3

    .line 242
    :cond_b5
    move p2, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v8

    .line 243
    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .local p2, "$i$f$consume":I
    :goto_ba
    goto :goto_80

    .line 242
    .end local v3    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .local v0, "$i$f$consume":I
    .local v1, "$result":Ljava/lang/Object;
    .restart local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .local p2, "it":Ljava/lang/Object;
    :cond_bb
    move p2, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_80

    .line 618
    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$filterNotNullTo$4":I
    .end local p2    # "it":Ljava/lang/Object;
    :cond_c0
    nop

    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c3
    .catchall {:try_start_96 .. :try_end_c3} :catchall_c9

    .line 619
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 616
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 618
    .end local v0    # "$i$f$consume":I
    nop

    .line 244
    .end local p0    # "$i$f$consumeEach":I
    return-object p1

    .line 620
    .end local p1    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .restart local v0    # "$i$f$consume":I
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    :catchall_c9
    move-exception p1

    move-object p2, v1

    move-object v1, p1

    move p1, v0

    move-object v0, v2

    goto :goto_d9

    .end local v2    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local p2, "$i$f$consume":I
    :catchall_cf
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move p1, p2

    move-object p2, v0

    move-object v0, v10

    goto :goto_d9

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$i$f$consumeEach":I
    .local p0, "$i$f$consume":I
    .local p2, "$result":Ljava/lang/Object;
    :catchall_d6
    move-exception v1

    move p1, p0

    move p0, v2

    .line 621
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .local p1, "$i$f$consume":I
    :goto_d9
    move-object v2, v1

    .line 622
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_db
    throw v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    .line 623
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_dc
    move-exception v1

    .line 619
    invoke-static {v6, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_4a
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic first(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 62
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    packed-switch v2, :pswitch_data_7e

    .line 512
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v1, 0x0

    .local v1, "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v2, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v4, 0x0

    :try_start_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    move-object v6, p1

    goto :goto_5c

    .line 508
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :catchall_3c
    move-exception v1

    .local v3, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_75

    .line 62
    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_3e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .local p0, "$this$first":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, p0

    .end local p0    # "$this$first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 502
    .local p0, "$i$f$consume":I
    nop

    .line 505
    const/4 v4, 0x0

    .line 506
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 507
    move-object v2, v3

    .local v2, "$this$first_u24lambda_u2d2":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 64
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    :try_start_48
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    move-object v2, v6

    .line 65
    .local v2, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_74

    if-ne v6, v1, :cond_5b

    .line 62
    return-object v1

    .line 65
    :cond_5b
    move v1, v5

    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    :goto_5c
    :try_start_5c
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 67
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v5
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_3c

    .line 512
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$f$consume":I
    invoke-static {v3, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v5

    .line 66
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    .restart local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p0    # "$i$f$consume":I
    :cond_6c
    :try_start_6c
    new-instance v5, Ljava/util/NoSuchElementException;

    const-string v6, "ReceiveChannel is empty."

    invoke-direct {v5, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v5
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_3c

    .line 508
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$first$2":I
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_74
    move-exception v1

    .line 509
    .local v1, "e$iv":Ljava/lang/Throwable;
    :goto_75
    move-object v2, v1

    .line 510
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_77
    throw v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 511
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_78
    move-exception v1

    .line 512
    invoke-static {v3, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic firstOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 72
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_7c

    .line 523
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v1, 0x0

    .local v1, "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v2, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3e

    move-object v5, p1

    move-object v7, v2

    move-object v2, v3

    goto :goto_5d

    .line 519
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :catchall_3e
    move-exception v1

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_3f
    goto :goto_74

    .line 72
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    :pswitch_40
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    .local p0, "$this$firstOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v4, p0

    .end local p0    # "$this$firstOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 513
    .local p0, "$i$f$consume":I
    nop

    .line 516
    const/4 v2, 0x0

    .line 517
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 518
    move-object v5, v4

    .local v5, "$this$firstOrNull_u24lambda_u2d3":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 74
    .local v6, "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    :try_start_4a
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    .line 75
    .end local v5    # "$this$firstOrNull_u24lambda_u2d3":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_72

    if-ne v5, v1, :cond_5c

    .line 72
    return-object v1

    .line 75
    :cond_5c
    move v1, v6

    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    :goto_5d
    :try_start_5d
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_6f

    if-nez v5, :cond_6a

    .line 76
    nop

    .line 523
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$f$consume":I
    :goto_66
    invoke-static {v4, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 77
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    .restart local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p0    # "$i$f$consume":I
    :cond_6a
    :try_start_6a
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6f

    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$firstOrNull$2":I
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$f$consume":I
    goto :goto_66

    .line 519
    .restart local p0    # "$i$f$consume":I
    :catchall_6f
    move-exception v1

    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v2

    goto :goto_3f

    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    :catchall_72
    move-exception v1

    move-object v3, v2

    .line 520
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    :goto_74
    move-object v2, v1

    .line 521
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_76
    throw v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    .line 522
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_77
    move-exception v1

    .line 523
    invoke-static {v4, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_40
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic flatMap(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$flatMap"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "transform"    # Lkotlin/jvm/functions/Function2;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 320
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 324
    return-object p1
.end method

.method public static synthetic flatMap$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 316
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 317
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 316
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->flatMap(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic indexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    goto :goto_1b

    :cond_16
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_1b
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 82
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_ec

    .line 89
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_2f
    const/4 v3, 0x0

    .local v3, "$i$f$consumeEach":I
    const/4 v5, 0x0

    .local v5, "$i$f$consume":I
    const/4 v6, 0x0

    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    .local v9, "index":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$0:Ljava/lang/Object;

    .local v10, "element":Ljava/lang/Object;
    const/4 v11, 0x0

    :try_start_41
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    move-object v3, v2

    goto :goto_8e

    .line 534
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v9    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "element":Ljava/lang/Object;
    :catchall_4e
    move-exception v0

    .local v8, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    goto/16 :goto_e3

    .line 82
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    :pswitch_51
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$indexOf":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v5, p1

    .line 83
    .local v5, "element":Ljava/lang/Object;
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 84
    .local v6, "index":Lkotlin/jvm/internal/Ref$IntRef;
    nop

    .local v3, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v7, 0x0

    .line 524
    .local v7, "$i$f$consumeEach":I
    move-object v8, v3

    .end local v3    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v3, 0x0

    .line 525
    .local v3, "$i$f$consume":I
    nop

    .line 528
    const/4 v11, 0x0

    .line 529
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 530
    move-object v9, v8

    .local v9, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v10, 0x0

    .line 531
    .local v10, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_66
    invoke-interface {v9}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v12
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_e0

    move-object v9, v6

    move v6, v10

    move-object v10, v5

    move v5, v3

    move v3, v7

    move-object v7, v12

    .end local v7    # "$i$f$consumeEach":I
    .local v3, "$i$f$consumeEach":I
    .local v5, "$i$f$consume":I
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v9, "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v10, "element":Ljava/lang/Object;
    :goto_70
    :try_start_70
    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->L$3:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_de

    if-ne v12, v0, :cond_81

    .line 82
    return-object v0

    .line 531
    :cond_81
    move/from16 v16, v3

    move-object v3, v2

    move-object v2, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v16

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v3, "$result":Ljava/lang/Object;
    .local v5, "$i$f$consumeEach":I
    .local v6, "$i$f$consume":I
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v10, "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "element":Ljava/lang/Object;
    :goto_8e
    :try_start_8e
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c2

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "e$iv":Ljava/lang/Object;
    move-object v13, v2

    .local v13, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 85
    .local v14, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$indexOf$2":I
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ac

    .line 86
    .end local v11    # "element":Ljava/lang/Object;
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_a8
    .catchall {:try_start_8e .. :try_end_a8} :catchall_d7

    .line 532
    .end local v2    # "e$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "it":Ljava/lang/Object;
    .end local v14    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$indexOf$2":I
    invoke-static {v9, v12}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v0

    .line 87
    .restart local v5    # "$i$f$consumeEach":I
    .restart local v6    # "$i$f$consume":I
    .restart local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v9, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "element":Ljava/lang/Object;
    .local v12, "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v14    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$indexOf$2":I
    :cond_ac
    :try_start_ac
    iget v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v2, v4

    iput v2, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_b1
    .catchall {:try_start_ac .. :try_end_b1} :catchall_bb

    .line 88
    move-object v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    .end local v14    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$indexOf$2":I
    goto :goto_70

    .line 534
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "element":Ljava/lang/Object;
    :catchall_bb
    move-exception v0

    move-object v2, v3

    move v3, v5

    move v5, v6

    move-object v8, v9

    move-object v11, v12

    goto :goto_e3

    .line 531
    .end local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v11    # "element":Ljava/lang/Object;
    :cond_c2
    move-object v8, v9

    .end local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "element":Ljava/lang/Object;
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v12

    .line 533
    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_c5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c7
    .catchall {:try_start_c5 .. :try_end_c7} :catchall_d2

    .line 532
    invoke-static {v8, v11}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 530
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 533
    .end local v6    # "$i$f$consume":I
    nop

    .line 89
    .end local v5    # "$i$f$consumeEach":I
    const/4 v0, -0x1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 534
    .restart local v5    # "$i$f$consumeEach":I
    .restart local v6    # "$i$f$consume":I
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_d2
    move-exception v0

    move-object v2, v3

    move v3, v5

    move v5, v6

    goto :goto_e3

    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_d7
    move-exception v0

    move-object v8, v9

    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v12

    move-object v2, v3

    move v3, v5

    move v5, v6

    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    goto :goto_e3

    .end local v6    # "$i$f$consume":I
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "$i$f$consumeEach":I
    .local v5, "$i$f$consume":I
    :catchall_de
    move-exception v0

    goto :goto_e3

    .end local v5    # "$i$f$consume":I
    .local v3, "$i$f$consume":I
    .local v7, "$i$f$consumeEach":I
    :catchall_e0
    move-exception v0

    move v5, v3

    move v3, v7

    .line 535
    .end local v7    # "$i$f$consumeEach":I
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v3, "$i$f$consumeEach":I
    .restart local v5    # "$i$f$consume":I
    :goto_e3
    move-object v4, v0

    .line 536
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "$i$f$consumeEach":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$f$consume":I
    .end local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_e5
    throw v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    .line 537
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$i$f$consume":I
    .restart local v8    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_e6
    move-exception v0

    .line 532
    invoke-static {v8, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_51
        :pswitch_2f
    .end packed-switch
.end method

.method public static final synthetic last(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 94
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    packed-switch v2, :pswitch_data_d6

    .line 548
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$2:Ljava/lang/Object;

    .local v3, "last":Ljava/lang/Object;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v6, 0x0

    :try_start_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_46

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_a1

    .line 544
    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .end local v3    # "last":Ljava/lang/Object;
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :catchall_46
    move-exception v1

    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "cause$iv":Ljava/lang/Throwable;
    goto/16 :goto_cd

    .line 94
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_49
    const/4 p0, 0x0

    .restart local p0    # "$i$f$consume":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v3, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    const/4 v6, 0x0

    .restart local v6    # "cause$iv":Ljava/lang/Throwable;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_cc

    move-object v4, v3

    move v3, v2

    move-object v2, p1

    goto :goto_78

    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .end local v3    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_5c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .local p0, "$this$last":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v5, p0

    .end local p0    # "$this$last":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 538
    .local p0, "$i$f$consume":I
    nop

    .line 541
    const/4 v6, 0x0

    .line 542
    .restart local v6    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 543
    move-object v2, v5

    .local v2, "$this$last_u24lambda_u2d5":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v3, 0x0

    .line 96
    .local v3, "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    :try_start_66
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    .line 97
    .end local v2    # "$this$last_u24lambda_u2d5":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_78

    .line 94
    return-object v1

    .line 97
    :cond_78
    :goto_78
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 99
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move v8, v3

    move-object v3, v2

    move v2, v8

    .line 100
    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .local v3, "last":Ljava/lang/Object;
    :goto_87
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_94
    .catchall {:try_start_66 .. :try_end_94} :catchall_cc

    if-ne v7, v1, :cond_97

    .line 94
    return-object v1

    .line 100
    :cond_97
    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v8

    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .local v4, "last":Ljava/lang/Object;
    .local v5, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :goto_a1
    :try_start_a1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 101
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_ad
    .catchall {:try_start_a1 .. :try_end_ad} :catchall_bc

    .end local v4    # "last":Ljava/lang/Object;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "last":Ljava/lang/Object;
    move v4, v3

    move-object v3, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .local v7, "cause$iv":Ljava/lang/Throwable;
    goto :goto_87

    .line 102
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "cause$iv":Ljava/lang/Throwable;
    .end local p1    # "last":Ljava/lang/Object;
    .restart local v4    # "last":Ljava/lang/Object;
    :cond_b7
    nop

    .line 548
    .end local v3    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .end local v4    # "last":Ljava/lang/Object;
    .end local v5    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$f$consume":I
    invoke-static {v6, v7}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v4

    .line 544
    .restart local p0    # "$i$f$consume":I
    :catchall_bc
    move-exception p1

    move-object v5, v6

    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v6, v7

    move-object v8, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v8

    .local v6, "cause$iv":Ljava/lang/Throwable;
    goto :goto_cd

    .line 98
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .local p1, "$result":Ljava/lang/Object;
    :cond_c4
    :try_start_c4
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "ReceiveChannel is empty."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_cc
    .catchall {:try_start_c4 .. :try_end_cc} :catchall_cc

    .line 544
    .end local v3    # "$i$a$-consume-ChannelsKt__DeprecatedKt$last$2":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_cc
    move-exception v1

    .line 545
    .local v1, "e$iv":Ljava/lang/Throwable;
    :goto_cd
    move-object v2, v1

    .line 546
    .end local v6    # "cause$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_cf
    throw v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d0

    .line 547
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_d0
    move-exception v1

    .line 548
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_49
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic lastIndexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    goto :goto_1b

    :cond_16
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_1b
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_ea

    .line 115
    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_2f
    const/4 v3, 0x0

    .local v3, "$i$f$consumeEach":I
    const/4 v5, 0x0

    .local v5, "$i$f$consume":I
    const/4 v6, 0x0

    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v8, 0x0

    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v9, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    .local v10, "index":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    .local v11, "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    .local v12, "element":Ljava/lang/Object;
    :try_start_45
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    move-object v3, v2

    goto :goto_a0

    .line 559
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v10    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v11    # "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v12    # "element":Ljava/lang/Object;
    :catchall_53
    move-exception v0

    goto/16 :goto_e1

    .line 107
    .end local v3    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_56
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "$this$lastIndexOf":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v5, p1

    .line 108
    .local v5, "element":Ljava/lang/Object;
    new-instance v6, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .local v6, "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    const/4 v7, -0x1

    iput v7, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 109
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 110
    .local v7, "index":Lkotlin/jvm/internal/Ref$IntRef;
    nop

    .local v3, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v8, 0x0

    .line 549
    .local v8, "$i$f$consumeEach":I
    move-object v9, v3

    .end local v3    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v3, 0x0

    .line 550
    .local v3, "$i$f$consume":I
    nop

    .line 553
    const/4 v10, 0x0

    .line 554
    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 555
    move-object v11, v9

    .local v11, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v12, 0x0

    .line 556
    .local v12, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_73
    invoke-interface {v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v13
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_dd

    move-object v11, v6

    move v6, v12

    move-object v12, v5

    move v5, v3

    move v3, v8

    move-object v8, v10

    move-object v10, v7

    move-object v7, v13

    .end local v7    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v3, "$i$f$consumeEach":I
    .local v5, "$i$f$consume":I
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    .local v10, "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v11, "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .local v12, "element":Ljava/lang/Object;
    :goto_7f
    :try_start_7f
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_53

    if-ne v13, v0, :cond_92

    .line 107
    return-object v0

    .line 556
    :cond_92
    move/from16 v16, v3

    move-object v3, v2

    move-object v2, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v16

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v3, "$result":Ljava/lang/Object;
    .local v5, "$i$f$consumeEach":I
    .local v6, "$i$f$consume":I
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v9, "cause$iv$iv":Ljava/lang/Throwable;
    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v11, "index":Lkotlin/jvm/internal/Ref$IntRef;
    .local v12, "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .local v13, "element":Ljava/lang/Object;
    :goto_a0
    :try_start_a0
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c7

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "it":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 111
    .local v14, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$lastIndexOf$2":I
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b7

    .line 112
    .end local v2    # "it":Ljava/lang/Object;
    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v2, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 113
    :cond_b7
    iget v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v2, v4

    iput v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 114
    move-object v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    .end local v14    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$lastIndexOf$2":I
    goto :goto_7f

    .line 557
    .end local v11    # "index":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v13    # "element":Ljava/lang/Object;
    :cond_c7
    nop

    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_ca
    .catchall {:try_start_a0 .. :try_end_ca} :catchall_d6

    .line 558
    invoke-static {v10, v9}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 555
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 557
    .end local v6    # "$i$f$consume":I
    nop

    .line 115
    .end local v5    # "$i$f$consumeEach":I
    iget v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 559
    .end local v12    # "lastIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .restart local v5    # "$i$f$consumeEach":I
    .restart local v6    # "$i$f$consume":I
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_d6
    move-exception v0

    move-object v2, v3

    move v3, v5

    move v5, v6

    move-object v8, v9

    move-object v9, v10

    goto :goto_e1

    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "$i$f$consume":I
    .local v8, "$i$f$consumeEach":I
    .local v9, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    :catchall_dd
    move-exception v0

    move v5, v3

    move v3, v8

    move-object v8, v10

    .line 560
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v3, "$i$f$consumeEach":I
    .local v5, "$i$f$consume":I
    .local v8, "cause$iv$iv":Ljava/lang/Throwable;
    :goto_e1
    move-object v4, v0

    .line 561
    .end local v8    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "$i$f$consumeEach":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$i$f$consume":I
    .end local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_e3
    throw v0
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e4

    .line 562
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "$i$f$consumeEach":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$i$f$consume":I
    .restart local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_e4
    move-exception v0

    .line 558
    invoke-static {v9, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_56
        :pswitch_2f
    .end packed-switch
.end method

.method public static final synthetic lastOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 120
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_de

    .line 573
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    const/4 v2, 0x0

    .local v2, "$i$f$consume":I
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    .local v4, "last":Ljava/lang/Object;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v5, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_39
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_46

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_ab

    .line 569
    .end local v4    # "last":Ljava/lang/Object;
    .end local v5    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    :catchall_46
    move-exception p0

    goto :goto_5c

    .line 120
    .end local v2    # "$i$f$consume":I
    :pswitch_48
    const/4 v2, 0x0

    .restart local v2    # "$i$f$consume":I
    const/4 p0, 0x0

    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_52
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5a

    move-object v7, p1

    move-object v6, v5

    move v5, p0

    move-object p0, v3

    goto :goto_7b

    .line 569
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    :catchall_5a
    move-exception p0

    move-object v6, v5

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_5c
    goto/16 :goto_d6

    .line 120
    .end local v2    # "$i$f$consume":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_5e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    .local p0, "$this$lastOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v6, p0

    .end local p0    # "$this$lastOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 563
    .restart local v2    # "$i$f$consume":I
    nop

    .line 566
    const/4 p0, 0x0

    .line 567
    .local p0, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 568
    move-object v4, v6

    .local v4, "$this$lastOrNull_u24lambda_u2d7":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 122
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    :try_start_68
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    move-object v4, v7

    .line 123
    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_d3

    if-ne v7, v1, :cond_7b

    .line 120
    return-object v1

    .line 123
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "cause$iv":Ljava/lang/Throwable;
    :cond_7b
    :goto_7b
    :try_start_7b
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_cf

    if-nez v7, :cond_88

    .line 124
    nop

    .line 573
    .end local v2    # "$i$f$consume":I
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    invoke-static {v6, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 123
    .restart local v2    # "$i$f$consume":I
    .restart local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v5    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_88
    move-object v3, p0

    .line 125
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    :try_start_89
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v8, v4

    move-object v4, p0

    move p0, v5

    move-object v5, v8

    .line 126
    .local v4, "last":Ljava/lang/Object;
    .local v5, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    :goto_91
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    invoke-interface {v5, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_9e
    .catchall {:try_start_89 .. :try_end_9e} :catchall_cd

    if-ne v7, v1, :cond_a1

    .line 120
    return-object v1

    .line 126
    :cond_a1
    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v8

    .end local v2    # "$i$f$consume":I
    .end local v4    # "last":Ljava/lang/Object;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$f$consume":I
    .local v5, "last":Ljava/lang/Object;
    .local v6, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :goto_ab
    :try_start_ab
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 127
    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_c6

    .end local v5    # "last":Ljava/lang/Object;
    .local v7, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "last":Ljava/lang/Object;
    move-object v5, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_91

    .line 128
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "last":Ljava/lang/Object;
    .restart local v5    # "last":Ljava/lang/Object;
    :cond_c1
    nop

    .line 573
    .end local v3    # "$i$f$consume":I
    .end local v5    # "last":Ljava/lang/Object;
    .end local v6    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$lastOrNull$2":I
    invoke-static {v7, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v5

    .line 569
    .restart local v3    # "$i$f$consume":I
    :catchall_c6
    move-exception p0

    move-object v6, v7

    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object p1, v0

    move-object v0, v1

    move v2, v3

    move-object v3, v4

    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_d6

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$f$consume":I
    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local p1, "$result":Ljava/lang/Object;
    :catchall_cd
    move-exception p0

    goto :goto_d6

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_cf
    move-exception v1

    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, p0

    move-object p0, v1

    goto :goto_5c

    .local p0, "cause$iv":Ljava/lang/Throwable;
    :catchall_d3
    move-exception v1

    move-object v3, p0

    move-object p0, v1

    .line 570
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .local p0, "e$iv":Ljava/lang/Throwable;
    :goto_d6
    move-object v1, p0

    .line 571
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v2    # "$i$f$consume":I
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_d8
    throw p0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d9

    .line 572
    .end local p0    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v2    # "$i$f$consume":I
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_d9
    move-exception p0

    .line 573
    invoke-static {v6, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_48
        :pswitch_2d
    .end packed-switch
.end method

.method public static final map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$map"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "transform"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TR;>;"
        }
    .end annotation

    .line 331
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 335
    return-object p1
.end method

.method public static synthetic map$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 327
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 328
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 327
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final mapIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$mapIndexed"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "transform"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TR;>;"
        }
    .end annotation

    .line 342
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 347
    return-object p1
.end method

.method public static synthetic mapIndexed$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 338
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 339
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 338
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->mapIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic mapIndexedNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4
    .param p0, "$this$mapIndexedNotNull"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "transform"    # Lkotlin/jvm/functions/Function3;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 355
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->mapIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelsKt;->filterNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic mapIndexedNotNull$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 351
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 352
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 351
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->mapIndexedNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic mapNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4
    .param p0, "$this$mapNotNull"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "transform"    # Lkotlin/jvm/functions/Function2;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 363
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelsKt;->filterNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic mapNotNull$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 359
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 360
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 359
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->mapNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic maxWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 417
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_fa

    .line 701
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 417
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$3:Ljava/lang/Object;

    .local v2, "max":Ljava/lang/Object;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    .local v6, "comparator":Ljava/util/Comparator;
    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto/16 :goto_b9

    .line 697
    .end local v2    # "max":Ljava/lang/Object;
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    :catchall_4a
    move-exception p0

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f2

    .line 417
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    :pswitch_4d
    const/4 p1, 0x0

    .restart local p1    # "$i$f$consume":I
    const/4 p0, 0x0

    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v2, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    .local v5, "comparator":Ljava/util/Comparator;
    :try_start_5b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    move-object v7, v2

    move-object v2, v3

    move-object v6, v5

    move-object v5, v4

    move-object v4, p2

    goto :goto_8b

    .line 697
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "comparator":Ljava/util/Comparator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    :catchall_64
    move-exception p0

    move-object v5, v4

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f2

    .line 417
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    :pswitch_68
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$maxWith":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v5, p1

    .line 418
    .local v5, "comparator":Ljava/util/Comparator;
    nop

    .local p0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p1, 0x0

    .line 691
    .restart local p1    # "$i$f$consume":I
    nop

    .line 694
    const/4 v2, 0x0

    .line 695
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 696
    move-object v4, p0

    .local v4, "$this$maxWith_u24lambda_u2d17":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 419
    .local v6, "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    :try_start_73
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    .line 420
    .end local v4    # "$this$maxWith_u24lambda_u2d17":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_ee

    if-ne v4, v1, :cond_87

    .line 417
    return-object v1

    .line 420
    :cond_87
    move-object v9, v5

    move-object v5, p0

    move p0, v6

    move-object v6, v9

    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "comparator":Ljava/util/Comparator;
    .local v6, "comparator":Ljava/util/Comparator;
    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    :goto_8b
    :try_start_8b
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_eb

    if-nez v4, :cond_97

    .line 701
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    .end local p1    # "$i$f$consume":I
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 420
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "comparator":Ljava/util/Comparator;
    .restart local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    .restart local p1    # "$i$f$consume":I
    :cond_97
    move-object v3, v2

    .line 421
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    :try_start_98
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v7

    .line 422
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v2, "max":Ljava/lang/Object;
    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :goto_9d
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->L$3:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_e9

    if-ne v7, v1, :cond_af

    .line 417
    return-object v1

    .line 422
    :cond_af
    move-object v9, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    .end local v2    # "max":Ljava/lang/Object;
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "max":Ljava/lang/Object;
    .local v5, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v7, "comparator":Ljava/util/Comparator;
    :goto_b9
    :try_start_b9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_de

    .line 423
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 424
    .local p2, "e":Ljava/lang/Object;
    invoke-interface {v7, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_e3

    if-gez v8, :cond_d5

    .end local v3    # "max":Ljava/lang/Object;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p2, "max":Ljava/lang/Object;
    move-object v3, v4

    move-object v4, v2

    move-object v2, p2

    move-object p2, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .local v3, "cause$iv":Ljava/lang/Throwable;
    goto :goto_9d

    .end local p2    # "max":Ljava/lang/Object;
    .local v3, "max":Ljava/lang/Object;
    :cond_d5
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_9d

    .line 426
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "comparator":Ljava/util/Comparator;
    :cond_de
    nop

    .line 701
    .end local v3    # "max":Ljava/lang/Object;
    .end local v5    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$maxWith$2":I
    .end local p1    # "$i$f$consume":I
    invoke-static {v6, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 697
    .restart local p1    # "$i$f$consume":I
    :catchall_e3
    move-exception p0

    move-object v5, v6

    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v4

    move-object p2, v0

    move-object v0, v1

    .local v3, "cause$iv":Ljava/lang/Throwable;
    goto :goto_f2

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local p2, "$result":Ljava/lang/Object;
    :catchall_e9
    move-exception p0

    goto :goto_f2

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_eb
    move-exception p0

    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v2

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_f2

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    .local p0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_ee
    move-exception v1

    move-object v5, p0

    move-object p0, v1

    move-object v3, v2

    .line 698
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "e$iv":Ljava/lang/Throwable;
    :goto_f2
    move-object v1, p0

    .line 699
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_f4
    throw p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 700
    .end local p0    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_f5
    move-exception p0

    .line 701
    invoke-static {v5, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_68
        :pswitch_4d
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic minWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 13
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 431
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_fa

    .line 712
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 431
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$3:Ljava/lang/Object;

    .local v2, "min":Ljava/lang/Object;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    .local v6, "comparator":Ljava/util/Comparator;
    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_4a

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto/16 :goto_b9

    .line 708
    .end local v2    # "min":Ljava/lang/Object;
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    :catchall_4a
    move-exception p0

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f2

    .line 431
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    :pswitch_4d
    const/4 p1, 0x0

    .restart local p1    # "$i$f$consume":I
    const/4 p0, 0x0

    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v2, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    .local v5, "comparator":Ljava/util/Comparator;
    :try_start_5b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    move-object v7, v2

    move-object v2, v3

    move-object v6, v5

    move-object v5, v4

    move-object v4, p2

    goto :goto_8b

    .line 708
    .end local v2    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "comparator":Ljava/util/Comparator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    :catchall_64
    move-exception p0

    move-object v5, v4

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_f2

    .line 431
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    :pswitch_68
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$minWith":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v5, p1

    .line 432
    .local v5, "comparator":Ljava/util/Comparator;
    nop

    .local p0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p1, 0x0

    .line 702
    .restart local p1    # "$i$f$consume":I
    nop

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 707
    move-object v4, p0

    .local v4, "$this$minWith_u24lambda_u2d18":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 433
    .local v6, "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    :try_start_73
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    .line 434
    .end local v4    # "$this$minWith_u24lambda_u2d18":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_ee

    if-ne v4, v1, :cond_87

    .line 431
    return-object v1

    .line 434
    :cond_87
    move-object v9, v5

    move-object v5, p0

    move p0, v6

    move-object v6, v9

    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "comparator":Ljava/util/Comparator;
    .local v6, "comparator":Ljava/util/Comparator;
    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    :goto_8b
    :try_start_8b
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_eb

    if-nez v4, :cond_97

    .line 712
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    .end local p1    # "$i$f$consume":I
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 434
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "comparator":Ljava/util/Comparator;
    .restart local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    .restart local p1    # "$i$f$consume":I
    :cond_97
    move-object v3, v2

    .line 435
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    :try_start_98
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v7

    .line 436
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v2, "min":Ljava/lang/Object;
    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :goto_9d
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->L$3:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_e9

    if-ne v7, v1, :cond_af

    .line 431
    return-object v1

    .line 436
    :cond_af
    move-object v9, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    .end local v2    # "min":Ljava/lang/Object;
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v6    # "comparator":Ljava/util/Comparator;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "min":Ljava/lang/Object;
    .local v5, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v7, "comparator":Ljava/util/Comparator;
    :goto_b9
    :try_start_b9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_de

    .line 437
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 438
    .local p2, "e":Ljava/lang/Object;
    invoke-interface {v7, v3, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_c9
    .catchall {:try_start_b9 .. :try_end_c9} :catchall_e3

    if-lez v8, :cond_d5

    .end local v3    # "min":Ljava/lang/Object;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p2, "min":Ljava/lang/Object;
    move-object v3, v4

    move-object v4, v2

    move-object v2, p2

    move-object p2, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .local v3, "cause$iv":Ljava/lang/Throwable;
    goto :goto_9d

    .end local p2    # "min":Ljava/lang/Object;
    .local v3, "min":Ljava/lang/Object;
    :cond_d5
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_9d

    .line 440
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "comparator":Ljava/util/Comparator;
    :cond_de
    nop

    .line 712
    .end local v3    # "min":Ljava/lang/Object;
    .end local v5    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$minWith$2":I
    .end local p1    # "$i$f$consume":I
    invoke-static {v6, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 708
    .restart local p1    # "$i$f$consume":I
    :catchall_e3
    move-exception p0

    move-object v5, v6

    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v4

    move-object p2, v0

    move-object v0, v1

    .local v3, "cause$iv":Ljava/lang/Throwable;
    goto :goto_f2

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local p2, "$result":Ljava/lang/Object;
    :catchall_e9
    move-exception p0

    goto :goto_f2

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_eb
    move-exception p0

    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v2

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_f2

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    .local p0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_ee
    move-exception v1

    move-object v5, p0

    move-object p0, v1

    move-object v3, v2

    .line 709
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "e$iv":Ljava/lang/Throwable;
    :goto_f2
    move-object v1, p0

    .line 710
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_f4
    throw p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f5

    .line 711
    .end local p0    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_f5
    move-exception p0

    .line 712
    invoke-static {v5, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p0

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_68
        :pswitch_4d
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic none(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 10
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 445
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_70

    .line 723
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 445
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v1, 0x0

    .local v1, "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v4, 0x0

    :try_start_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    move-object v7, p1

    goto :goto_55

    .line 719
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    :catchall_39
    move-exception v1

    .local v2, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto :goto_68

    .line 445
    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 446
    .local p0, "$this$none":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v2, p0

    .end local p0    # "$this$none":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 713
    .local p0, "$i$f$consume":I
    nop

    .line 716
    const/4 v4, 0x0

    .line 717
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 718
    move-object v5, v2

    .local v5, "$this$none_u24lambda_u2d19":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 447
    .local v6, "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    :try_start_45
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_67

    .end local v5    # "$this$none_u24lambda_u2d19":Lkotlinx/coroutines/channels/ReceiveChannel;
    if-ne v7, v1, :cond_54

    .line 445
    return-object v1

    .line 447
    :cond_54
    move v1, v6

    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    :goto_55
    :try_start_55
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x0

    :goto_5f
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_39

    .line 723
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$none$2":I
    .end local p0    # "$i$f$consume":I
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 719
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    :catchall_67
    move-exception v1

    .line 720
    .local v1, "e$iv":Ljava/lang/Throwable;
    :goto_68
    move-object v3, v1

    .line 721
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .local v3, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_6a
    throw v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 722
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_6b
    move-exception v1

    .line 723
    invoke-static {v2, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic requireNoNulls(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4
    .param p0, "$this$requireNoNulls"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Left for binary compatibility"
    .end annotation

    .line 453
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->map$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic single(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 133
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    packed-switch v2, :pswitch_data_b4

    .line 584
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v1, 0x0

    .local v1, "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    .local v2, "single":Ljava/lang/Object;
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v4, 0x0

    :try_start_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3a

    move-object v7, p1

    goto :goto_8e

    .line 580
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .end local v2    # "single":Ljava/lang/Object;
    :catchall_3a
    move-exception v1

    .local v3, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "cause$iv":Ljava/lang/Throwable;
    goto/16 :goto_ac

    .line 133
    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local p0    # "$i$f$consume":I
    :pswitch_3d
    const/4 p0, 0x0

    .restart local p0    # "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v3, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    const/4 v4, 0x0

    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4e

    move-object v6, v3

    move-object v3, p1

    goto :goto_71

    .line 580
    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .end local v3    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :catchall_4e
    move-exception v1

    move-object v3, v5

    goto :goto_ac

    .line 133
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    :pswitch_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 134
    .local p0, "$this$single":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, p0

    .end local p0    # "$this$single":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v3, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 574
    .local p0, "$i$f$consume":I
    nop

    .line 577
    const/4 v4, 0x0

    .line 578
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    nop

    .line 579
    move-object v2, v3

    .local v2, "$this$single_u24lambda_u2d8":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 135
    .local v5, "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    :try_start_5b
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    .line 136
    .end local v2    # "$this$single_u24lambda_u2d8":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_ab

    if-ne v2, v1, :cond_6d

    .line 133
    return-object v1

    .line 136
    :cond_6d
    move-object v8, v3

    move-object v3, v2

    move v2, v5

    move-object v5, v8

    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_71
    :try_start_71
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 138
    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 139
    .local v3, "single":Ljava/lang/Object;
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    invoke-interface {v6, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_4e

    .end local v6    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    if-ne v7, v1, :cond_8b

    .line 133
    return-object v1

    .line 139
    :cond_8b
    move v1, v2

    move-object v2, v3

    move-object v3, v5

    .end local v3    # "single":Ljava/lang/Object;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .local v2, "single":Ljava/lang/Object;
    :goto_8e
    :try_start_8e
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_3a

    if-nez v5, :cond_9b

    .line 141
    nop

    .line 584
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .end local v2    # "single":Ljava/lang/Object;
    .end local p0    # "$i$f$consume":I
    invoke-static {v3, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v2

    .line 140
    .restart local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .restart local v2    # "single":Ljava/lang/Object;
    .restart local p0    # "$i$f$consume":I
    :cond_9b
    :try_start_9b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "ReceiveChannel has more than one element."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v5
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_3a

    .line 137
    .end local v1    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_a3
    :try_start_a3
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v3, "ReceiveChannel is empty."

    invoke-direct {v1, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    throw v1
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_4e

    .line 580
    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$single$2":I
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "cause$iv":Ljava/lang/Throwable;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_ab
    move-exception v1

    .line 581
    .local v1, "e$iv":Ljava/lang/Throwable;
    :goto_ac
    move-object v2, v1

    .line 582
    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_ae
    throw v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_af

    .line 583
    .end local v1    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v3    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consume":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_af
    move-exception v1

    .line 584
    invoke-static {v3, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_51
        :pswitch_3d
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic singleOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 12
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->result:Ljava/lang/Object;

    .local p1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 146
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_cc

    .line 595
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$result":Ljava/lang/Object;
    :pswitch_2d
    const/4 p0, 0x0

    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    const/4 v1, 0x0

    .local v1, "$i$f$consume":I
    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    .local v2, "single":Ljava/lang/Object;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3c

    move-object v8, p1

    move-object v5, v3

    goto/16 :goto_9f

    .line 591
    .end local v2    # "single":Ljava/lang/Object;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    :catchall_3c
    move-exception p0

    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    goto/16 :goto_c3

    .line 146
    .end local v1    # "$i$f$consume":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_3f
    const/4 p0, 0x0

    .local p0, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v4, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_54

    move v6, v2

    move v2, p0

    move p0, v6

    move-object v7, v4

    move-object v6, v5

    move-object v5, p1

    move-object v4, v3

    goto :goto_7c

    .line 591
    .end local v2    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    .end local v4    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    :catchall_54
    move-exception v1

    move-object v4, v5

    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v9, v1

    move v1, p0

    move-object p0, v9

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto/16 :goto_c3

    .line 146
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consume":I
    :pswitch_5b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 147
    .local p0, "$this$singleOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v4, p0

    .end local p0    # "$this$singleOrNull":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 585
    .local p0, "$i$f$consume":I
    nop

    .line 588
    const/4 v2, 0x0

    .line 589
    .local v2, "cause$iv":Ljava/lang/Throwable;
    nop

    .line 590
    move-object v5, v4

    .local v5, "$this$singleOrNull_u24lambda_u2d9":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    :try_start_65
    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7

    .line 149
    .end local v5    # "$this$singleOrNull_u24lambda_u2d9":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_be

    if-ne v5, v1, :cond_77

    .line 146
    return-object v1

    .line 149
    :cond_77
    move-object v9, v2

    move v2, p0

    move p0, v6

    move-object v6, v4

    move-object v4, v9

    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    .local v2, "$i$f$consume":I
    .local p0, "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    :goto_7c
    :try_start_7c
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_b9

    if-nez v5, :cond_89

    .line 150
    nop

    .line 595
    .end local v2    # "$i$f$consume":I
    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    invoke-static {v6, v4}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 151
    .restart local v2    # "$i$f$consume":I
    .local v4, "cause$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    :cond_89
    :try_start_89
    invoke-interface {v7}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 152
    .local v5, "single":Ljava/lang/Object;
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x2

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_b4

    .end local v7    # "iterator":Lkotlinx/coroutines/channels/ChannelIterator;
    if-ne v8, v1, :cond_9b

    .line 146
    return-object v1

    .line 152
    :cond_9b
    move v1, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v6

    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v5    # "single":Ljava/lang/Object;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v1    # "$i$f$consume":I
    .local v2, "single":Ljava/lang/Object;
    :goto_9f
    :try_start_9f
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_b1

    if-eqz v6, :cond_ac

    .line 153
    nop

    .line 595
    .end local v1    # "$i$f$consume":I
    .end local v2    # "single":Ljava/lang/Object;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    invoke-static {v4, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v3

    .line 154
    .restart local v1    # "$i$f$consume":I
    .restart local v2    # "single":Ljava/lang/Object;
    .restart local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    :cond_ac
    nop

    .line 595
    .end local v1    # "$i$f$consume":I
    .end local v2    # "single":Ljava/lang/Object;
    .end local p0    # "$i$a$-consume-ChannelsKt__DeprecatedKt$singleOrNull$2":I
    invoke-static {v4, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    return-object v2

    .line 591
    .restart local v1    # "$i$f$consume":I
    :catchall_b1
    move-exception p0

    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v5

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_c3

    .end local v1    # "$i$f$consume":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .local v2, "$i$f$consume":I
    .local v4, "cause$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_b4
    move-exception p0

    move v1, v2

    move-object v3, v4

    move-object v4, v6

    goto :goto_c3

    .end local v4    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_b9
    move-exception p0

    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v3, v4

    move v1, v2

    move-object v4, v6

    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    goto :goto_c3

    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "cause$iv":Ljava/lang/Throwable;
    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    :catchall_be
    move-exception v1

    move-object v3, v1

    move v1, p0

    move-object p0, v3

    move-object v3, v2

    .line 592
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v1    # "$i$f$consume":I
    .restart local v3    # "cause$iv":Ljava/lang/Throwable;
    .local p0, "e$iv":Ljava/lang/Throwable;
    :goto_c3
    move-object v2, p0

    .line 593
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$i$f$consume":I
    .end local v2    # "cause$iv":Ljava/lang/Throwable;
    .end local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$result":Ljava/lang/Object;
    :try_start_c5
    throw p0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c6

    .line 594
    .end local p0    # "e$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$i$f$consume":I
    .restart local v2    # "cause$iv":Ljava/lang/Throwable;
    .restart local v4    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_c6
    move-exception p0

    .line 595
    invoke-static {v4, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw p0

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_3f
        :pswitch_2d
    .end packed-switch
.end method

.method public static final synthetic take(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$take"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "n"    # I
    .param p2, "context"    # Lkotlin/coroutines/CoroutineContext;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 250
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;-><init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    .end local p2    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p2

    .line 260
    return-object p2
.end method

.method public static synthetic take$default(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 249
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->take(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic takeWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 12
    .param p0, "$this$takeWhile"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 268
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 273
    return-object p1
.end method

.method public static synthetic takeWhile$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 5

    .line 264
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    .line 265
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 264
    :cond_a
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt;->takeWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final toChannel(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 276
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    packed-switch v2, :pswitch_data_d6

    .line 280
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v3, 0x0

    .local v3, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v5, 0x0

    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    .local v7, "destination":Lkotlinx/coroutines/channels/SendChannel;
    :try_start_3d
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_64

    move-object v10, p2

    move p2, p1

    move-object p1, v7

    move-object v7, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    goto/16 :goto_b3

    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v3    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_4a
    const/4 p0, 0x0

    .restart local p0    # "$i$f$consumeEach":I
    const/4 p1, 0x0

    .restart local p1    # "$i$f$consume":I
    const/4 v2, 0x0

    .restart local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v5, 0x0

    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v4, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v6, v4

    .end local v4    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/SendChannel;

    .local v4, "destination":Lkotlinx/coroutines/channels/SendChannel;
    :try_start_5b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    move-object v7, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_92

    .line 634
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    :catchall_64
    move-exception v1

    goto/16 :goto_cd

    .line 276
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_67
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 277
    .local p0, "$this$toChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "destination":Lkotlinx/coroutines/channels/SendChannel;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 624
    .local v2, "$i$f$consumeEach":I
    move-object v6, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 625
    .local p0, "$i$f$consume":I
    nop

    .line 628
    const/4 v5, 0x0

    .line 629
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 630
    move-object v3, v6

    .local v3, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v4, 0x0

    .line 631
    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_73
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_ca

    move-object v10, p2

    move p2, p0

    move p0, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v10

    .end local v2    # "$i$f$consumeEach":I
    .end local v3    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local p0, "$i$f$consumeEach":I
    .local p2, "$i$f$consume":I
    :goto_7d
    :try_start_7d
    iput-object p1, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_c3

    if-ne v3, v2, :cond_8d

    .line 276
    return-object v2

    .line 631
    :cond_8d
    move-object v10, v7

    move-object v7, p1

    move p1, p2

    move-object p2, v3

    move-object v3, v10

    .end local p2    # "$i$f$consume":I
    .restart local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .local p1, "$i$f$consume":I
    :goto_92
    :try_start_92
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b4

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "it":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 278
    .local v8, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->L$2:Ljava/lang/Object;

    const/4 v9, 0x2

    iput v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    invoke-interface {v7, p2, v1}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    .end local p2    # "it":Ljava/lang/Object;
    if-ne v9, v2, :cond_af

    .line 276
    return-object v2

    .line 278
    :cond_af
    move p2, p1

    move-object p1, v7

    move-object v7, v3

    move v3, v8

    .line 279
    .end local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    .local v3, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    .local p1, "destination":Lkotlinx/coroutines/channels/SendChannel;
    .local p2, "$i$f$consume":I
    :goto_b3
    goto :goto_7d

    .line 632
    .end local v3    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toChannel$2":I
    .end local p2    # "$i$f$consume":I
    .restart local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .local p1, "$i$f$consume":I
    :cond_b4
    nop

    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b7
    .catchall {:try_start_92 .. :try_end_b7} :catchall_bd

    .line 633
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 630
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 632
    .end local p1    # "$i$f$consume":I
    nop

    .line 280
    .end local p0    # "$i$f$consumeEach":I
    return-object v7

    .line 634
    .end local v7    # "destination":Lkotlinx/coroutines/channels/SendChannel;
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :catchall_bd
    move-exception p2

    move-object v10, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v10

    goto :goto_cd

    .end local p1    # "$i$f$consume":I
    .restart local p2    # "$i$f$consume":I
    :catchall_c3
    move-exception p1

    move-object v10, v1

    move-object v1, p1

    move p1, p2

    move-object p2, v0

    move-object v0, v10

    goto :goto_cd

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$i$f$consumeEach":I
    .local p0, "$i$f$consume":I
    .local p2, "$result":Ljava/lang/Object;
    :catchall_ca
    move-exception v1

    move p1, p0

    move p0, v2

    .line 635
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :goto_cd
    move-object v2, v1

    .line 636
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_cf
    throw v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d0

    .line 637
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_d0
    move-exception v1

    .line 633
    invoke-static {v6, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_67
        :pswitch_4a
        :pswitch_2c
    .end packed-switch
.end method

.method public static final toCollection(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 284
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    packed-switch v2, :pswitch_data_b2

    .line 288
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v4, 0x0

    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination":Ljava/util/Collection;
    :try_start_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_48

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_7b

    .line 648
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "destination":Ljava/util/Collection;
    :catchall_48
    move-exception v1

    goto/16 :goto_a9

    .line 284
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 285
    .local p0, "$this$toCollection":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "destination":Ljava/util/Collection;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 638
    .local v2, "$i$f$consumeEach":I
    move-object v5, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 639
    .local p0, "$i$f$consume":I
    nop

    .line 642
    const/4 v4, 0x0

    .line 643
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 644
    move-object v3, v5

    .local v3, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 645
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_57
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_a6

    move-object v3, p1

    move p1, p0

    move p0, v2

    move v2, v6

    move-object v6, v3

    move-object v3, v7

    .end local v3    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v6, "destination":Ljava/util/Collection;
    .local p0, "$i$f$consumeEach":I
    .local p1, "$i$f$consume":I
    :goto_61
    :try_start_61
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    invoke-interface {v3, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_48

    if-ne v7, v1, :cond_71

    .line 284
    return-object v1

    .line 645
    :cond_71
    move-object v10, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v10

    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "destination":Ljava/util/Collection;
    :goto_7b
    :try_start_7b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_95

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "e$iv":Ljava/lang/Object;
    move-object v8, p2

    .local v8, "it":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 286
    .local v9, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toCollection$2":I
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 287
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v8    # "it":Ljava/lang/Object;
    .end local v9    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toCollection$2":I
    .end local p2    # "e$iv":Ljava/lang/Object;
    goto :goto_61

    .line 646
    :cond_95
    nop

    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_98
    .catchall {:try_start_7b .. :try_end_98} :catchall_9e

    .line 647
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 644
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 646
    .end local p1    # "$i$f$consume":I
    nop

    .line 288
    .end local p0    # "$i$f$consumeEach":I
    return-object v7

    .line 648
    .end local v7    # "destination":Ljava/util/Collection;
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :catchall_9e
    move-exception p2

    move-object v4, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_a9

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$i$f$consumeEach":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    .local p2, "$result":Ljava/lang/Object;
    :catchall_a6
    move-exception v1

    move p1, p0

    move p0, v2

    .line 649
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :goto_a9
    move-object v2, v1

    .line 650
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_ab
    throw v1
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 651
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_ac
    move-exception v1

    .line 647
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_2c
    .end packed-switch
.end method

.method public static final toMap(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;TM;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->result:Ljava/lang/Object;

    .local p2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 297
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    packed-switch v2, :pswitch_data_bc

    .line 301
    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p2    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 297
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p2    # "$result":Ljava/lang/Object;
    :pswitch_2c
    const/4 p0, 0x0

    .local p0, "$i$f$consumeEach":I
    const/4 p1, 0x0

    .local p1, "$i$f$consume":I
    const/4 v2, 0x0

    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v4, 0x0

    .local v4, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    .local v6, "destination":Ljava/util/Map;
    :try_start_3c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_48

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p2

    goto :goto_7b

    .line 662
    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v6    # "destination":Ljava/util/Map;
    :catchall_48
    move-exception v1

    goto/16 :goto_b3

    .line 297
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    :pswitch_4b
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 298
    .local p0, "$this$toMap":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p1, "destination":Ljava/util/Map;
    nop

    .local p0, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v2, 0x0

    .line 652
    .local v2, "$i$f$consumeEach":I
    move-object v5, p0

    .end local p0    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 p0, 0x0

    .line 653
    .local p0, "$i$f$consume":I
    nop

    .line 656
    const/4 v4, 0x0

    .line 657
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 658
    move-object v3, v5

    .local v3, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v6, 0x0

    .line 659
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_57
    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_b0

    move-object v3, p1

    move p1, p0

    move p0, v2

    move v2, v6

    move-object v6, v3

    move-object v3, v7

    .end local v3    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v6, "destination":Ljava/util/Map;
    .local p0, "$i$f$consumeEach":I
    .local p1, "$i$f$consume":I
    :goto_61
    :try_start_61
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    invoke-interface {v3, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_48

    if-ne v7, v1, :cond_71

    .line 297
    return-object v1

    .line 659
    :cond_71
    move-object v12, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v12

    .end local v2    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local p2    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "destination":Ljava/util/Map;
    :goto_7b
    :try_start_7b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9f

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .local p2, "e$iv":Ljava/lang/Object;
    move-object v8, p2

    check-cast v8, Lkotlin/Pair;

    .local v8, "it":Lkotlin/Pair;
    const/4 v9, 0x0

    .line 299
    .local v9, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toMap$3":I
    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    move-object p2, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v8    # "it":Lkotlin/Pair;
    .end local v9    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$toMap$3":I
    .end local p2    # "e$iv":Ljava/lang/Object;
    goto :goto_61

    .line 660
    :cond_9f
    nop

    .end local v3    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a2
    .catchall {:try_start_7b .. :try_end_a2} :catchall_a8

    .line 661
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 658
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 660
    .end local p1    # "$i$f$consume":I
    nop

    .line 301
    .end local p0    # "$i$f$consumeEach":I
    return-object v7

    .line 662
    .end local v7    # "destination":Ljava/util/Map;
    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :catchall_a8
    move-exception p2

    move-object v4, v1

    move-object v1, p2

    move-object p2, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_b3

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$i$f$consume":I
    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    .local v2, "$i$f$consumeEach":I
    .restart local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v5, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local p0, "$i$f$consume":I
    .local p2, "$result":Ljava/lang/Object;
    :catchall_b0
    move-exception v1

    move p1, p0

    move p0, v2

    .line 663
    .end local v2    # "$i$f$consumeEach":I
    .local v1, "e$iv$iv":Ljava/lang/Throwable;
    .local p0, "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    :goto_b3
    move-object v2, v1

    .line 664
    .end local v4    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v2, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "$i$f$consumeEach":I
    .end local p1    # "$i$f$consume":I
    .end local p2    # "$result":Ljava/lang/Object;
    :try_start_b5
    throw v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    .line 665
    .end local v1    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p0    # "$i$f$consumeEach":I
    .restart local p1    # "$i$f$consume":I
    .restart local p2    # "$result":Ljava/lang/Object;
    :catchall_b6
    move-exception v1

    .line 661
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_2c
    .end packed-switch
.end method

.method public static final synthetic toMap(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$toMap"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 294
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->toMap(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic toMutableList(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$toMutableList"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->toCollection(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final toMutableSet(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$toMutableSet"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Set<",
            "TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->toCollection(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic toSet(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .param p0, "$this$toSet"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 312
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->toMutableSet(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic withIndex(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 11
    .param p0, "$this$withIndex"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "context"    # Lkotlin/coroutines/CoroutineContext;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 368
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    .end local p1    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p1

    .line 373
    return-object p1
.end method

.method public static synthetic withIndex$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 4

    .line 367
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_a

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_a
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->withIndex(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 9
    .param p0, "$this$zip"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "other"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility"
    .end annotation

    .line 458
    sget-object v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;->INSTANCE:Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p0    # "$this$zip":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "other":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "$this$zip":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "other":Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/channels/ChannelsKt;->zip$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 13
    .param p0, "$this$zip"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p1, "other"    # Lkotlinx/coroutines/channels/ReceiveChannel;
    .param p2, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p3, "transform"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TR;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-TR;+TV;>;)",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TV;>;"
        }
    .end annotation

    .line 466
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelsKt;->consumesAll([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;

    move-result-object v5

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, p3, v2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    .end local p2    # "context":Lkotlin/coroutines/CoroutineContext;
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {v1 .. v8}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p2

    .line 473
    return-object p2
.end method

.method public static synthetic zip$default(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .registers 6

    .line 461
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    .line 463
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 461
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelsKt;->zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.AnonymousClass1 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$any$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->any(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0
    }
    l = {
        0x194
    }
    m = "any"
    n = {
        "$this$consume$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$any$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->any(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00491 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$consumes$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->consumes(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cause",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_consumes:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;->$this_consumes:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 476
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 477
    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumes$1;->$this_consumes:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 478
    return-void
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00501 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$consumesAll$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->consumesAll([Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1\n+ 2 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n75#2:480\n1#3:481\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1\n*L\n26#1:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "cause",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $channels:[Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;->$channels:[Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "p1"    # Ljava/lang/Object;

    .line 17
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumesAll$1;->$channels:[Lkotlinx/coroutines/channels/ReceiveChannel;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 20
    .local v4, "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 21
    :try_start_a
    invoke-static {v4, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_18

    .line 22
    :catchall_e
    move-exception v5

    .line 23
    .local v5, "e":Ljava/lang/Throwable;
    if-nez v0, :cond_13

    .line 24
    move-object v0, v5

    goto :goto_18

    .line 26
    :cond_13
    move-object v6, v0

    .local v6, "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 480
    .local v7, "$i$f$addSuppressedThrowable":I
    invoke-static {v6, v5}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 19
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v6    # "$this$addSuppressedThrowable$iv":Ljava/lang/Throwable;
    .end local v7    # "$i$f$addSuppressedThrowable":I
    :goto_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 29
    .end local v4    # "channel":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_1b
    if-nez v0, :cond_1e

    .line 30
    return-void

    .line 29
    :cond_1e
    move-object v1, v0

    .line 481
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-let-ChannelsKt__DeprecatedKt$consumesAll$1$1":I
    throw v1
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00511 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$count$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->count(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "count"
    n = {
        "count",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$count$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->count(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00521 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->distinct(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TE;",
        "Lkotlin/coroutines/Continuation<",
        "-TE;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u0002H\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "E",
        "it"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1"
    f = "Deprecated.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 378
    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->label:I

    packed-switch v0, :pswitch_data_18

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinct$1;->L$0:Ljava/lang/Object;

    .local v1, "it":Ljava/lang/Object;
    return-object v1

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00531 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->distinctBy(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "K",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x183,
        0x184,
        0x186
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "keys",
        "$this$produce",
        "keys",
        "e",
        "$this$produce",
        "keys",
        "k"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$3",
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $selector:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TK;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TK;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 385
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->label:I

    packed-switch v1, :pswitch_data_ea

    .line 394
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :pswitch_11
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$3:Ljava/lang/Object;

    .local v2, "k":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .local v4, "keys":Ljava/util/HashSet;
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d5

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .end local v2    # "k":Ljava/lang/Object;
    .end local v4    # "keys":Ljava/util/HashSet;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$3:Ljava/lang/Object;

    .local v2, "e":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    .restart local v4    # "keys":Ljava/util/HashSet;
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_b1

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .end local v2    # "e":Ljava/lang/Object;
    .end local v4    # "keys":Ljava/util/HashSet;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_40
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    .local v3, "keys":Ljava/util/HashSet;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_8b

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .end local v3    # "keys":Ljava/util/HashSet;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_57
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 386
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 387
    .restart local v3    # "keys":Ljava/util/HashSet;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v9, v4

    move-object v4, v2

    move-object v2, v9

    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_6d
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->label:I

    invoke-interface {v2, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_83

    .line 385
    return-object v0

    .line 387
    :cond_83
    move-object v9, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .end local v3    # "keys":Ljava/util/HashSet;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .local v4, "keys":Ljava/util/HashSet;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_8b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e7

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 388
    .local p1, "e":Ljava/lang/Object;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iput-object p1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$3:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->label:I

    invoke-interface {v6, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_ab

    .line 385
    return-object v1

    .line 388
    :cond_ab
    move-object v9, v3

    move-object v3, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v9

    .line 385
    .end local v4    # "keys":Ljava/util/HashSet;
    .end local p1    # "e":Ljava/lang/Object;
    .local v3, "e":Ljava/lang/Object;
    .local v5, "keys":Ljava/util/HashSet;
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_b1
    nop

    .line 389
    .local p1, "k":Ljava/lang/Object;
    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e0

    .line 390
    move-object v7, v2

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iput-object p1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;->label:I

    invoke-interface {v6, v3, v7}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "e":Ljava/lang/Object;
    if-ne v3, v1, :cond_cd

    .line 385
    return-object v1

    .line 390
    :cond_cd
    move-object v3, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .local v2, "k":Ljava/lang/Object;
    .restart local v4    # "keys":Ljava/util/HashSet;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_d5
    nop

    .line 391
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_6d

    .line 389
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .end local v4    # "keys":Ljava/util/HashSet;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$distinctBy$1;
    .restart local v3    # "e":Ljava/lang/Object;
    .local v5, "keys":Ljava/util/HashSet;
    .restart local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "k":Ljava/lang/Object;
    :cond_e0
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    goto :goto_6d

    .line 394
    .end local v3    # "e":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "k":Ljava/lang/Object;
    .restart local v4    # "keys":Ljava/util/HashSet;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_e7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_57
        :pswitch_40
        :pswitch_25
        :pswitch_11
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00541 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->drop(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x2
    }
    l = {
        0xa4,
        0xa9,
        0xaa
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "remaining",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $n:I

.field final synthetic $this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;

    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;-><init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 160
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_108

    .line 172
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :pswitch_12
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_df

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_20
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_bd

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_33
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->I$0:I

    .local v3, "remaining":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_83

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v3    # "remaining":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 161
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    if-ltz v4, :cond_56

    move v4, v2

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    :goto_57
    iget v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    if-eqz v4, :cond_e3

    .line 162
    iget v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$n:I

    .line 163
    .local v4, "remaining":I
    if-lez v4, :cond_9f

    .line 164
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    move-object v7, v5

    move-object v5, v3

    move v3, v4

    move-object v4, v7

    .end local v4    # "remaining":I
    .local v3, "remaining":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_69
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->I$0:I

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {v4, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_7b

    .line 160
    return-object v0

    .line 164
    :cond_7b
    move-object v7, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v7

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local v4    # "remaining":I
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_83
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9b

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 165
    add-int/lit8 p1, v4, -0x1

    .line 166
    .end local v4    # "remaining":I
    .local p1, "remaining":I
    if-nez p1, :cond_93

    .line 167
    .end local p1    # "remaining":I
    goto :goto_9b

    .line 166
    .restart local p1    # "remaining":I
    :cond_93
    move-object v4, v3

    move v3, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_69

    .line 169
    .end local p1    # "remaining":I
    :cond_9b
    :goto_9b
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :cond_9f
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    :goto_a5
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_b6

    .line 160
    return-object v0

    .line 169
    :cond_b6
    move-object v7, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_bd
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e0

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 170
    .local p1, "e":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;->label:I

    invoke-interface {v4, p1, v5}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_da

    .line 160
    return-object v1

    .line 170
    :cond_da
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_df
    goto :goto_a5

    .line 172
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_e0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 480
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$drop$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_e3
    const/4 v0, 0x0

    .line 161
    .local v0, "$i$a$-require-ChannelsKt__DeprecatedKt$drop$1$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested element count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is less than zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ChannelsKt__DeprecatedKt$drop$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_48
        :pswitch_33
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00551 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->dropWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x3,
        0x4
    }
    l = {
        0xb5,
        0xb6,
        0xb7,
        0xbb,
        0xbc
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "e",
        "$this$produce",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$2",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 180
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_118

    .line 190
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :pswitch_12
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v2

    goto/16 :goto_113

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_f5

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_37
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_d0

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_41
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    .local v3, "e":Ljava/lang/Object;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_b1

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v3    # "e":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_56
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_8f

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_68
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 181
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    :goto_76
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_89

    .line 180
    return-object v0

    .line 181
    :cond_89
    move-object v8, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v3

    move-object v3, v1

    move-object v1, v8

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_8f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_db

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 182
    .local p1, "e":Ljava/lang/Object;
    iget-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {v6, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_ad

    .line 180
    return-object v1

    .line 182
    :cond_ad
    move-object v8, v4

    move-object v4, p1

    move-object p1, v6

    move-object v6, v8

    .end local p1    # "e":Ljava/lang/Object;
    .local v4, "e":Ljava/lang/Object;
    :goto_b1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d5

    .line 183
    move-object p1, v3

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {v5, v4, p1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_cc

    .line 180
    return-object v1

    .line 183
    :cond_cc
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v2, v5

    .line 184
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_d0
    move-object v3, v1

    move-object v5, v2

    move-object v1, v0

    move-object v0, p1

    goto :goto_db

    .line 182
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;
    .restart local v4    # "e":Ljava/lang/Object;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_d5
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    move-object v4, v6

    goto :goto_76

    .line 187
    .end local v4    # "e":Ljava/lang/Object;
    :cond_db
    :goto_db
    iget-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->$this_dropWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    :goto_e1
    move-object v2, v3

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_f2

    .line 180
    return-object v1

    .line 187
    :cond_f2
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_f5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_114

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 188
    .local p1, "e":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$dropWhile$1;->label:I

    invoke-interface {v5, p1, v4}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_112

    .line 180
    return-object v1

    .line 188
    :cond_112
    move-object p1, v2

    :goto_113
    goto :goto_e1

    .line 190
    :cond_114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_68
        :pswitch_56
        :pswitch_41
        :pswitch_37
        :pswitch_25
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00561 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$elementAt$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->elementAt(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x26
    }
    m = "elementAt"
    n = {
        "$this$consume$iv",
        "index",
        "count"
    }
    s = {
        "L$0",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAt$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->elementAt(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00571 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$elementAtOrNull$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->elementAtOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x35
    }
    m = "elementAtOrNull"
    n = {
        "$this$consume$iv",
        "index",
        "count"
    }
    s = {
        "L$0",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$elementAtOrNull$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->elementAtOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00581 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filter(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0xc6,
        0xc7,
        0xc7
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "e",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_filter:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$this_filter:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$predicate:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$this_filter:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$predicate:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 197
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_c0

    .line 201
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 197
    :pswitch_12
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b6

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_20
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$2:Ljava/lang/Object;

    .local v3, "e":Ljava/lang/Object;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_96

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local v3    # "e":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_36
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_73

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_48
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 198
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$this_filter:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_59
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->label:I

    invoke-interface {v3, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6c

    .line 197
    return-object v0

    .line 198
    :cond_6c
    move-object v8, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_73
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_bd

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 199
    .local p1, "e":Ljava/lang/Object;
    iget-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->$predicate:Lkotlin/jvm/functions/Function2;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->label:I

    invoke-interface {v6, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_91

    .line 197
    return-object v1

    .line 199
    :cond_91
    move-object v8, v4

    move-object v4, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v8

    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "e":Ljava/lang/Object;
    .local v4, "e":Ljava/lang/Object;
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_96
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b7

    move-object p1, v3

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;->label:I

    invoke-interface {v6, v4, p1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_b1

    .line 197
    return-object v1

    .line 199
    :cond_b1
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    move-object v4, v6

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_b6
    goto :goto_59

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v3    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filter$1;
    .local v4, "e":Ljava/lang/Object;
    .restart local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_b7
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v5

    move-object v4, v6

    goto :goto_59

    .line 201
    .end local v4    # "e":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_bd
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_36
        :pswitch_20
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00591 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filterIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0xd3,
        0xd4,
        0xd4
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "e",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$2",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_filterIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$this_filterIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$predicate:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$this_filterIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$predicate:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 209
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->label:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_d4

    .line 214
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :pswitch_12
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    .local v3, "index":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c9

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .end local v3    # "index":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_22
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    .restart local v3    # "index":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$2:Ljava/lang/Object;

    .local v4, "e":Ljava/lang/Object;
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v8, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_a6

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .end local v3    # "index":I
    .end local v4    # "e":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_38
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    .restart local v3    # "index":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_7d

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .end local v3    # "index":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_4d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 210
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    const/4 v4, 0x0

    .line 211
    .local v4, "index":I
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$this_filterIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    move-object v10, v5

    move-object v5, v3

    move v3, v4

    move-object v4, v10

    .end local v4    # "index":I
    .local v3, "index":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_60
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$2:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    const/4 v7, 0x1

    iput v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->label:I

    invoke-interface {v4, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_75

    .line 209
    return-object v0

    .line 211
    :cond_75
    move-object v10, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v10

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .restart local v4    # "index":I
    .restart local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_7d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d1

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 212
    .local p1, "e":Ljava/lang/Object;
    iget-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->$predicate:Lkotlin/jvm/functions/Function3;

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "index":I
    .local v8, "index":I
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    const/4 v9, 0x2

    iput v9, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->label:I

    invoke-interface {v7, v4, p1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_a3

    .line 209
    return-object v1

    .line 212
    :cond_a3
    move-object v10, v4

    move-object v4, p1

    move-object p1, v10

    .end local p1    # "e":Ljava/lang/Object;
    .local v4, "e":Ljava/lang/Object;
    :goto_a6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_ca

    move-object p1, v3

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->I$0:I

    const/4 v7, 0x3

    iput v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;->label:I

    invoke-interface {v6, v4, p1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v4    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_c3

    .line 209
    return-object v1

    .line 212
    :cond_c3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v4, v5

    move-object v5, v6

    move v3, v8

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v8    # "index":I
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .local v3, "index":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_c9
    goto :goto_60

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterIndexed$1;
    .restart local v4    # "e":Ljava/lang/Object;
    .restart local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v8    # "index":I
    :cond_ca
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v4, v5

    move-object v5, v6

    move v3, v8

    goto :goto_60

    .line 214
    .end local v8    # "index":I
    .local v4, "index":I
    :cond_d1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_38
        :pswitch_22
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00601 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filterNot(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TE;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "it"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1"
    f = "Deprecated.kt"
    i = {}
    l = {
        0xde
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->$predicate:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->$predicate:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 222
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_38

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_12
    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    move-object v0, p1

    goto :goto_2c

    .end local v0    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_19
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->L$0:Ljava/lang/Object;

    .local v3, "it":Ljava/lang/Object;
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->$predicate:Lkotlin/jvm/functions/Function2;

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNot$1;->label:I

    invoke-interface {v4, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "it":Ljava/lang/Object;
    if-ne v3, v0, :cond_2a

    return-object v0

    :cond_2a
    move-object v0, p1

    move-object p1, v3

    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    :goto_2c
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00611 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filterNotNull(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TE;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "",
        "it"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1"
    f = "Deprecated.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 227
    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->label:I

    packed-switch v0, :pswitch_data_20

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNull$1;->L$0:Ljava/lang/Object;

    .local v1, "it":Ljava/lang/Object;
    if-eqz v1, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    .end local v1    # "it":Ljava/lang/Object;
    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00621 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNullTo$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TE;>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "filterNotNullTo"
    n = {
        "destination",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.AnonymousClass3 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNullTo$3)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C::",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "-TE;>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x1e7,
        0xf2
    }
    m = "filterNotNullTo"
    n = {
        "destination",
        "$this$consume$iv$iv",
        "destination",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$filterNotNullTo$3;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->filterNotNullTo(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00631 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$first$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->first(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x41
    }
    m = "first"
    n = {
        "$this$consume$iv",
        "iterator"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$first$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->first(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00641 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$firstOrNull$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->firstOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x4b
    }
    m = "firstOrNull"
    n = {
        "$this$consume$iv",
        "iterator"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$firstOrNull$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->firstOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00651 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->flatMap(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x2
    }
    l = {
        0x141,
        0x142,
        0x142
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $this_flatMap:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TR;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TR;>;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$this_flatMap:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$this_flatMap:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 320
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->label:I

    packed-switch v1, :pswitch_data_a8

    .line 324
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :pswitch_11
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a4

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1f
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_89

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_32
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_6d

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 321
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$this_flatMap:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_55
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->label:I

    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_66

    .line 320
    return-object v0

    .line 321
    :cond_66
    move-object v8, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v8

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_6d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a5

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 322
    .local p1, "e":Ljava/lang/Object;
    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->$transform:Lkotlin/jvm/functions/Function2;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->label:I

    invoke-interface {v5, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_89

    .line 320
    return-object v1

    .line 322
    :cond_89
    :goto_89
    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;->label:I

    invoke-static {p1, v5, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->toChannel(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9f

    .line 320
    return-object v1

    .line 322
    :cond_9f
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_a4
    goto :goto_55

    .line 324
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$flatMap$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_a5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_44
        :pswitch_32
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00661 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$indexOf$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->indexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "indexOf"
    n = {
        "element",
        "index",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$indexOf$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->indexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00671 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$last$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->last(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x61,
        0x64
    }
    m = "last"
    n = {
        "$this$consume$iv",
        "iterator",
        "$this$consume$iv",
        "iterator",
        "last"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$last$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->last(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00681 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$lastIndexOf$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->lastIndexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "lastIndexOf"
    n = {
        "element",
        "lastIndex",
        "index",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastIndexOf$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->lastIndexOf(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00691 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$lastOrNull$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->lastOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x7b,
        0x7e
    }
    m = "lastOrNull"
    n = {
        "$this$consume$iv",
        "iterator",
        "$this$consume$iv",
        "iterator",
        "last"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$lastOrNull$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->lastOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00701 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->map(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n103#2:480\n80#2,6:481\n104#2,2:487\n90#2:489\n86#2,4:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1\n*L\n332#1:480\n332#1:481,6\n332#1:487,2\n332#1:489\n332#1:490,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x1e7,
        0x14d,
        0x14d
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$consume$iv$iv",
        "$this$produce",
        "$this$consume$iv$iv",
        "$this$produce",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$2",
        "L$0",
        "L$2",
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $this_map:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 331
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    packed-switch v2, :pswitch_data_124

    .line 335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_13
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object/from16 v3, p1

    .local v3, "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "$i$f$consumeEach":I
    const/4 v5, 0x0

    .local v5, "$i$f$consume":I
    const/4 v6, 0x0

    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v7, 0x0

    .local v7, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v9, 0x0

    .local v9, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ProducerScope;

    .local v12, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_2c
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_87

    move-object/from16 v16, v8

    move v8, v4

    move-object v4, v12

    move-object/from16 v12, v16

    goto/16 :goto_106

    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_37
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "$i$f$consumeEach":I
    const/4 v5, 0x0

    .restart local v5    # "$i$f$consume":I
    const/4 v6, 0x0

    .restart local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v10, 0x0

    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    .local v13, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_54
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5d

    move-object v14, v13

    move v13, v7

    move v7, v4

    move-object v4, v3

    goto/16 :goto_e8

    .line 490
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v7    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_5d
    move-exception v0

    move-object v9, v10

    move-object v10, v11

    goto/16 :goto_11c

    .line 331
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_62
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    const/4 v4, 0x0

    .restart local v4    # "$i$f$consumeEach":I
    const/4 v5, 0x0

    .restart local v5    # "$i$f$consume":I
    const/4 v6, 0x0

    .restart local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v9, 0x0

    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    move-object v10, v8

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ProducerScope;

    .local v11, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_7b
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_87

    move-object v12, v9

    move-object v9, v8

    move-object v8, v11

    move-object v11, v10

    move-object v10, v12

    move-object v12, v7

    move v7, v4

    move-object v4, v3

    goto :goto_c2

    .line 490
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v11    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_87
    move-exception v0

    goto/16 :goto_11c

    .line 331
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_8a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    move-object/from16 v3, p1

    .restart local v3    # "$result":Ljava/lang/Object;
    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .line 332
    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v5, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x0

    .line 480
    .local v7, "$i$f$consumeEach":I
    move-object v10, v5

    .end local v5    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 481
    .local v5, "$i$f$consume":I
    nop

    .line 484
    const/4 v9, 0x0

    .line 485
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 486
    move-object v8, v10

    .local v8, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v11, 0x0

    .line 487
    .local v11, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_a1
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v12

    move-object v8, v6

    move v6, v11

    .end local v8    # "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :goto_a7
    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    const/4 v11, 0x1

    iput v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    invoke-interface {v12, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_b6
    .catchall {:try_start_a1 .. :try_end_b6} :catchall_11a

    if-ne v11, v0, :cond_b9

    .line 331
    return-object v0

    .line 487
    :cond_b9
    move-object/from16 v16, v4

    move-object v4, v3

    move-object v3, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v4, "$result":Ljava/lang/Object;
    .local v8, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_c2
    :try_start_c2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_109

    invoke-interface {v12}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "it":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 333
    .local v13, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    const/4 v14, 0x2

    iput v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    invoke-interface {v9, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v3    # "it":Ljava/lang/Object;
    if-ne v14, v0, :cond_e3

    .line 331
    return-object v0

    .line 333
    :cond_e3
    move-object v3, v12

    move-object v12, v9

    move-object v9, v3

    move-object v3, v14

    move-object v14, v8

    .end local v8    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v14, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_e8
    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$3:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->L$4:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;->label:I

    invoke-interface {v8, v3, v2}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_fd

    .line 331
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    return-object v0

    .line 333
    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    :cond_fd
    move-object v3, v12

    move-object v12, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v3

    move-object v3, v4

    move v8, v7

    move v7, v13

    move-object v4, v14

    .line 334
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local v7, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$map$1$1":I
    .local v8, "$i$f$consumeEach":I
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_106
    move v7, v8

    move-object v8, v11

    goto :goto_a7

    .line 488
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "$i$f$consumeEach":I
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v4, "$result":Ljava/lang/Object;
    .local v7, "$i$f$consumeEach":I
    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_109
    nop

    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10c
    .catchall {:try_start_c2 .. :try_end_10c} :catchall_114

    .line 489
    invoke-static {v11, v10}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 486
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 488
    .end local v5    # "$i$f$consume":I
    nop

    .line 335
    .end local v7    # "$i$f$consumeEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 490
    .restart local v5    # "$i$f$consume":I
    .restart local v7    # "$i$f$consumeEach":I
    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_114
    move-exception v0

    move-object v3, v4

    move v4, v7

    move-object v9, v10

    move-object v10, v11

    goto :goto_11c

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v10, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_11a
    move-exception v0

    move v4, v7

    .line 491
    .end local v7    # "$i$f$consumeEach":I
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v4, "$i$f$consumeEach":I
    :goto_11c
    move-object v6, v0

    .line 492
    .end local v9    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v6, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v4    # "$i$f$consumeEach":I
    .end local v5    # "$i$f$consume":I
    .end local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_11e
    throw v0
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11f

    .line 493
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$map$1;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v4    # "$i$f$consumeEach":I
    .restart local v5    # "$i$f$consume":I
    .restart local v6    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v10    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_11f
    move-exception v0

    .line 489
    invoke-static {v10, v6}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_62
        :pswitch_37
        :pswitch_13
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00711 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->mapIndexed(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TR;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x158,
        0x159,
        0x159
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_mapIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/Integer;",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$transform:Lkotlin/jvm/functions/Function3;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$transform:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 342
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->label:I

    packed-switch v1, :pswitch_data_c2

    .line 347
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 342
    :pswitch_11
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    .local v2, "index":I
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    move v3, v2

    move-object v2, v4

    move-object v4, v9

    goto/16 :goto_be

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .end local v2    # "index":I
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    .restart local v2    # "index":I
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_a3

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .end local v2    # "index":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3d
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    .restart local v2    # "index":I
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_7a

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .end local v2    # "index":I
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 343
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    const/4 v3, 0x0

    .line 344
    .local v3, "index":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    :goto_60
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->label:I

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_73

    .line 342
    return-object v0

    .line 344
    :cond_73
    move-object v9, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v9

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_7a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_bf

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 345
    .local p1, "e":Ljava/lang/Object;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->$transform:Lkotlin/jvm/functions/Function3;

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    const/4 v8, 0x2

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->label:I

    invoke-interface {v6, v3, p1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_a0

    .line 342
    return-object v1

    .line 345
    :cond_a0
    move-object v3, v4

    move-object v4, v5

    move-object v5, v3

    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_a3
    move-object v6, v2

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->I$0:I

    const/4 v8, 0x3

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;->label:I

    invoke-interface {v3, p1, v6}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b9

    .line 342
    return-object v1

    .line 345
    :cond_b9
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move v3, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v7    # "index":I
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v3    # "index":I
    .local p1, "$result":Ljava/lang/Object;
    :goto_be
    goto :goto_60

    .line 347
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$mapIndexed$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_bf
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_51
        :pswitch_3d
        :pswitch_25
        :pswitch_11
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00721 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$maxWith$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->maxWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x1a4,
        0x1a6
    }
    m = "maxWith"
    n = {
        "comparator",
        "$this$consume$iv",
        "iterator",
        "comparator",
        "$this$consume$iv",
        "iterator",
        "max"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$maxWith$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->maxWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00731 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$minWith$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->minWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x1b2,
        0x1b4
    }
    m = "minWith"
    n = {
        "comparator",
        "$this$consume$iv",
        "iterator",
        "comparator",
        "$this$consume$iv",
        "iterator",
        "min"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$minWith$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->minWith(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00741 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$none$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->none(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0
    }
    l = {
        0x1bf
    }
    m = "none"
    n = {
        "$this$consume$iv"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$none$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->none(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00751 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->requireNoNulls(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TE;",
        "Lkotlin/coroutines/Continuation<",
        "-TE;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u0001H\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "E",
        "",
        "it"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1"
    f = "Deprecated.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $this_requireNoNulls:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->$this_requireNoNulls:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->$this_requireNoNulls:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 453
    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->label:I

    packed-switch v0, :pswitch_data_3a

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .local v0, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->L$0:Ljava/lang/Object;

    .local v1, "it":Ljava/lang/Object;
    if-eqz v1, :cond_19

    return-object v1

    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null element found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$requireNoNulls$1;->$this_requireNoNulls:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00761 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$single$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->single(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x88,
        0x8b
    }
    m = "single"
    n = {
        "$this$consume$iv",
        "iterator",
        "$this$consume$iv",
        "single"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$single$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->single(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00771 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$singleOrNull$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->singleOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x95,
        0x98
    }
    m = "singleOrNull"
    n = {
        "$this$consume$iv",
        "iterator",
        "$this$consume$iv",
        "single"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$singleOrNull$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->singleOrNull(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00781 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->take(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xfe,
        0xff
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "remaining",
        "$this$produce",
        "remaining"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $n:I

.field final synthetic $this_take:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;

    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;-><init>(ILkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 250
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_ca

    .line 260
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :pswitch_12
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->I$0:I

    .local v3, "remaining":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_96

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .end local v3    # "remaining":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_22
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->I$0:I

    .restart local v3    # "remaining":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_71

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .end local v3    # "remaining":I
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 251
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    if-nez v4, :cond_46

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 252
    :cond_46
    iget v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    if-ltz v4, :cond_4c

    move v4, v2

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    iget v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    if-eqz v4, :cond_a5

    .line 253
    iget v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$n:I

    .line 254
    .local v4, "remaining":I
    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    :goto_59
    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$1:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->I$0:I

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->label:I

    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6b

    .line 250
    return-object v0

    .line 254
    :cond_6b
    move-object v9, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v3

    move-object v3, v1

    move-object v1, v9

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .local v6, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a2

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 255
    .local p1, "e":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->L$1:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->I$0:I

    const/4 v8, 0x2

    iput v8, v3, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;->label:I

    invoke-interface {v6, p1, v7}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_90

    .line 250
    return-object v1

    .line 255
    :cond_90
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 256
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "remaining":I
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .local v3, "remaining":I
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_96
    add-int/lit8 v3, v3, -0x1

    .line 257
    if-nez v3, :cond_9d

    .line 258
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 257
    :cond_9d
    move-object v9, v4

    move v4, v3

    move-object v3, v5

    move-object v5, v9

    goto :goto_59

    .line 260
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v3, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .restart local v4    # "remaining":I
    .restart local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_a2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 480
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .end local v4    # "remaining":I
    .end local v6    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$take$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_a5
    const/4 v0, 0x0

    .line 252
    .local v0, "$i$a$-require-ChannelsKt__DeprecatedKt$take$1$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested element count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is less than zero."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ChannelsKt__DeprecatedKt$take$1$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_37
        :pswitch_22
        :pswitch_12
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00791 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->takeWhile(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2
    }
    l = {
        0x10d,
        0x10e,
        0x10f
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "$this$produce",
        "e",
        "$this$produce"
    }
    s = {
        "L$0",
        "L$0",
        "L$2",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $predicate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_takeWhile:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$this_takeWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$this_takeWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 268
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->label:I

    packed-switch v1, :pswitch_data_bc

    .line 273
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :pswitch_11
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b7

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1f
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$2:Ljava/lang/Object;

    .local v2, "e":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_93

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v2    # "e":Ljava/lang/Object;
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_35
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_70

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 269
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$this_takeWhile:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .end local v2    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_58
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->label:I

    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_69

    .line 268
    return-object v0

    .line 269
    :cond_69
    move-object v7, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v7

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_70
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b8

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 270
    .local p1, "e":Ljava/lang/Object;
    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->$predicate:Lkotlin/jvm/functions/Function2;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    iput-object p1, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->label:I

    invoke-interface {v5, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_8e

    .line 268
    return-object v1

    .line 270
    :cond_8e
    move-object v7, v3

    move-object v3, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v7

    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "e":Ljava/lang/Object;
    .local v3, "e":Ljava/lang/Object;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_93
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_9e

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 271
    :cond_9e
    move-object p1, v2

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;->label:I

    invoke-interface {v5, v3, p1}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_b2

    .line 268
    return-object v1

    .line 271
    :cond_b2
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .local v3, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .local p1, "$result":Ljava/lang/Object;
    :goto_b7
    goto :goto_58

    .line 273
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .end local v3    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$takeWhile$1;
    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_b8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_47
        :pswitch_35
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00801 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toChannel$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->toChannel(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C::",
        "Lkotlinx/coroutines/channels/SendChannel<",
        "-TE;>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x1e7,
        0x116
    }
    m = "toChannel"
    n = {
        "destination",
        "$this$consume$iv$iv",
        "destination",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toChannel$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->toChannel(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00811 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toCollection$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->toCollection(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "C::",
        "Ljava/util/Collection<",
        "-TE;>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "toCollection"
    n = {
        "destination",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toCollection$1;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->toCollection(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.AnonymousClass2 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$toMap$2)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Deprecated.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->toMap(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "M::",
        "Ljava/util/Map<",
        "-TK;-TV;>;>",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1e7
    }
    m = "toMap"
    n = {
        "destination",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->result:Ljava/lang/Object;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$toMap$2;->label:I

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->toMap(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00821 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->withIndex(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lkotlin/collections/IndexedValue<",
        "+TE;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lkotlin/collections/IndexedValue;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x172,
        0x173
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "index",
        "$this$produce",
        "index"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $this_withIndex:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->$this_withIndex:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->$this_withIndex:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lkotlin/collections/IndexedValue<",
            "+TE;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 368
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->label:I

    packed-switch v1, :pswitch_data_92

    .line 373
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :pswitch_11
    move-object v1, p0

    .local v1, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .local p1, "$result":Ljava/lang/Object;
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->I$0:I

    .local v2, "index":I
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .local v4, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v3

    move v3, v2

    move-object v2, v4

    move-object v4, v9

    goto/16 :goto_8d

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .end local v2    # "index":I
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_25
    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->I$0:I

    .restart local v2    # "index":I
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p1

    goto :goto_62

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .end local v2    # "index":I
    .end local v4    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    .line 369
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    const/4 v3, 0x0

    .line 370
    .local v3, "index":I
    iget-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->$this_withIndex:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    :goto_49
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->I$0:I

    const/4 v6, 0x1

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->label:I

    invoke-interface {v4, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_5c

    .line 368
    return-object v0

    .line 370
    :cond_5c
    move-object v9, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v2

    move-object v2, v1

    move-object v1, v9

    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_62
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8e

    invoke-interface {v4}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 371
    .local p1, "e":Ljava/lang/Object;
    new-instance v6, Lkotlin/collections/IndexedValue;

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "index":I
    .local v7, "index":I
    invoke-direct {v6, v3, p1}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$0:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->L$1:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->I$0:I

    const/4 v8, 0x2

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;->label:I

    invoke-interface {v5, v6, v3}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/Object;
    if-ne p1, v1, :cond_88

    .line 368
    return-object v1

    .line 371
    :cond_88
    move-object p1, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move v3, v7

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .end local v7    # "index":I
    .restart local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .local v2, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    .restart local v3    # "index":I
    .local p1, "$result":Ljava/lang/Object;
    :goto_8d
    goto :goto_49

    .line 373
    .end local v1    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$withIndex$1;
    .restart local v5    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :cond_8e
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_25
        :pswitch_11
    .end packed-switch
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00831 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$1)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TE;TR;",
        "Lkotlin/Pair<",
        "+TE;+TR;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0006\u0010\u0005\u001a\u0002H\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "E",
        "R",
        "t1",
        "t2",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;->INSTANCE:Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 458
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;
    .registers 4
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TR;)",
            "Lkotlin/Pair<",
            "TE;TR;>;"
        }
    .end annotation

    .line 458
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt.C00842 (kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2)
.class final Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Deprecated.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->zip(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TV;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n*L\n1#1,479:1\n103#2:480\n80#2,6:481\n104#2,2:487\n90#2:489\n86#2,4:490\n*S KotlinDebug\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2\n*L\n468#1:480\n468#1:481,6\n468#1:487,2\n468#1:489\n468#1:490,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "R",
        "V",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2"
    f = "Deprecated.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x1e7,
        0x1d5,
        0x1d7
    }
    m = "invokeSuspend"
    n = {
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv",
        "element1",
        "$this$produce",
        "otherIterator",
        "$this$consume$iv$iv"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "L$0",
        "L$1",
        "L$3",
        "L$5",
        "L$0",
        "L$1",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $other:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TE;TR;TV;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TR;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TE;-TR;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p3, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 466
    move-object/from16 v1, p0

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_17e

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :pswitch_14
    move-object/from16 v2, p0

    .local v2, "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object/from16 v4, p1

    .local v4, "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "$i$f$consumeEach":I
    const/4 v6, 0x0

    .local v6, "$i$f$consume":I
    const/4 v7, 0x0

    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v8, 0x0

    .local v8, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v10, 0x0

    .local v10, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v13, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ProducerScope;

    .local v14, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_31
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_99

    move-object/from16 v16, v11

    move-object v11, v10

    move-object v10, v12

    move-object/from16 v12, v16

    goto/16 :goto_13e

    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :pswitch_3c
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "$i$f$consumeEach":I
    const/4 v6, 0x0

    .restart local v6    # "$i$f$consume":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    const/4 v8, 0x0

    .restart local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    .local v9, "element1":Ljava/lang/Object;
    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function2;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelIterator;

    .restart local v13    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ProducerScope;

    .restart local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_5a
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_6a

    move-object v15, v11

    move-object v11, v3

    move-object v3, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v15

    move v15, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    goto/16 :goto_110

    .line 490
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v8    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .end local v9    # "element1":Ljava/lang/Object;
    .end local v13    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_6a
    move-exception v0

    move-object v10, v3

    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    goto/16 :goto_176

    .line 466
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_6e
    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "$i$f$consumeEach":I
    const/4 v6, 0x0

    .restart local v6    # "$i$f$consume":I
    const/4 v7, 0x0

    .restart local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelIterator;

    const/4 v10, 0x0

    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v9, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v9

    .end local v9    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ChannelIterator;

    .local v12, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ProducerScope;

    .local v13, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :try_start_8b
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_99

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    goto :goto_e8

    .line 490
    .end local v7    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v12    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v13    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_99
    move-exception v0

    goto/16 :goto_176

    .line 466
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :pswitch_9c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    move-object/from16 v4, p1

    .restart local v4    # "$result":Ljava/lang/Object;
    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .line 467
    .local v5, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    iget-object v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$other:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    .line 468
    .local v6, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/ReceiveChannel;

    .local v7, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->$transform:Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x0

    .line 480
    .local v9, "$i$f$consumeEach":I
    move-object v11, v7

    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v7, 0x0

    .line 481
    .local v7, "$i$f$consume":I
    nop

    .line 484
    const/4 v10, 0x0

    .line 485
    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 486
    move-object v12, v11

    .local v12, "$this$consumeEach_u24lambda_u2d1$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v13, 0x0

    .line 487
    .local v13, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    :try_start_b9
    invoke-interface {v12}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v14
    :try_end_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_173

    move-object v12, v6

    move v6, v7

    move v7, v13

    move-object v13, v5

    move v5, v9

    move-object v9, v8

    move-object v8, v14

    .end local v9    # "$i$f$consumeEach":I
    .local v5, "$i$f$consumeEach":I
    .local v6, "$i$f$consume":I
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v12, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v13, "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_c4
    :try_start_c4
    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    const/4 v14, 0x1

    iput v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v8, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14
    :try_end_d7
    .catchall {:try_start_c4 .. :try_end_d7} :catchall_99

    if-ne v14, v0, :cond_da

    .line 466
    return-object v0

    .line 487
    :cond_da
    move/from16 v16, v5

    move-object v5, v4

    move-object v4, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v16

    .end local v4    # "$result":Ljava/lang/Object;
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$consumeEach":I
    .local v7, "$i$f$consume":I
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :goto_e8
    :try_start_e8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_161

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element1":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 469
    .local v15, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v13, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_108
    .catchall {:try_start_e8 .. :try_end_108} :catchall_16c

    if-ne v3, v0, :cond_10b

    .line 466
    return-object v0

    .line 469
    :cond_10b
    move-object/from16 v16, v4

    move-object v4, v3

    move-object/from16 v3, v16

    .end local v4    # "element1":Ljava/lang/Object;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v3, "element1":Ljava/lang/Object;
    :goto_110
    :try_start_110
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_116
    .catchall {:try_start_110 .. :try_end_116} :catchall_15a

    if-eqz v4, :cond_149

    .line 470
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    :try_start_118
    invoke-interface {v13}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "element2":Ljava/lang/Object;
    invoke-interface {v10, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$4:Ljava/lang/Object;

    move-object/from16 p1, v3

    const/4 v3, 0x0

    .end local v3    # "element1":Ljava/lang/Object;
    .local p1, "element1":Ljava/lang/Object;
    iput-object v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->L$5:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;->label:I

    invoke-interface {v14, v1, v2}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v4    # "element2":Ljava/lang/Object;
    .end local p1    # "element1":Ljava/lang/Object;
    if-ne v1, v0, :cond_139

    .line 466
    return-object v0

    .line 471
    :cond_139
    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v15

    .line 472
    .end local v15    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .local v4, "$result":Ljava/lang/Object;
    .local v5, "$i$f$consumeEach":I
    .local v6, "$i$f$consume":I
    .local v7, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .local v8, "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    :goto_13e
    move-object/from16 v1, p0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    const/4 v3, 0x0

    goto/16 :goto_c4

    .line 469
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v3    # "element1":Ljava/lang/Object;
    .local v5, "$result":Ljava/lang/Object;
    .local v6, "$i$f$consumeEach":I
    .local v7, "$i$f$consume":I
    .local v8, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v15    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    :cond_149
    move-object/from16 p1, v3

    .end local v3    # "element1":Ljava/lang/Object;
    .restart local p1    # "element1":Ljava/lang/Object;
    move-object/from16 v1, p0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    const/4 v3, 0x0

    .end local v15    # "$i$a$-consumeEach-ChannelsKt__DeprecatedKt$zip$2$1":I
    .end local p1    # "element1":Ljava/lang/Object;
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    goto/16 :goto_c4

    .line 490
    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v13    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v14    # "$this$produce":Lkotlinx/coroutines/channels/ProducerScope;
    :catchall_15a
    move-exception v0

    move-object v10, v11

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v11, v12

    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    goto :goto_176

    .line 488
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    :cond_161
    nop

    .end local v8    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$2$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_164
    .catchall {:try_start_118 .. :try_end_164} :catchall_16c

    .line 489
    invoke-static {v12, v11}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 486
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    nop

    .line 488
    .end local v7    # "$i$f$consume":I
    nop

    .line 473
    .end local v6    # "$i$f$consumeEach":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 490
    .restart local v6    # "$i$f$consumeEach":I
    .restart local v7    # "$i$f$consume":I
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_16c
    move-exception v0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v10, v11

    move-object v11, v12

    goto :goto_176

    .end local v5    # "$result":Ljava/lang/Object;
    .end local v6    # "$i$f$consumeEach":I
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v9    # "$i$f$consumeEach":I
    .restart local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v11, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_173
    move-exception v0

    move v6, v7

    move v5, v9

    .line 491
    .end local v7    # "$i$f$consume":I
    .end local v9    # "$i$f$consumeEach":I
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v5, "$i$f$consumeEach":I
    .local v6, "$i$f$consume":I
    :goto_176
    move-object v1, v0

    .line 492
    .end local v10    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v1, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .end local v4    # "$result":Ljava/lang/Object;
    .end local v5    # "$i$f$consumeEach":I
    .end local v6    # "$i$f$consume":I
    .end local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_178
    throw v0
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_179

    .line 493
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v2    # "this":Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$zip$2;
    .restart local v4    # "$result":Ljava/lang/Object;
    .restart local v5    # "$i$f$consumeEach":I
    .restart local v6    # "$i$f$consume":I
    .restart local v11    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_179
    move-exception v0

    .line 489
    invoke-static {v11, v1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_17e
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_6e
        :pswitch_3c
        :pswitch_14
    .end packed-switch
.end method
