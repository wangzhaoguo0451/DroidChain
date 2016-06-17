.class public final Lcom/wandoujia/base/utils/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field private static final ANDROID_HOTSPOT_IP_ADDRESS:Ljava/lang/String; = "192.168.43.1"

.field private static final IOS_HOTSPOT_IP_ADDRESS:Ljava/lang/String; = "172.20.10.1"

.field public static final NETWORK_NAME_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_NAME_NONE:Ljava/lang/String; = "none"

.field public static final NETWORK_NAME_PC:Ljava/lang/String; = "pc"

.field public static final NETWORK_NAME_WIFI:Ljava/lang/String; = "wifi"

.field public static final NETWORK_TYPE_MOBILE:I = 0x0

.field public static final NETWORK_TYPE_NONE:I = -0x1

.field public static final NETWORK_TYPE_PC:I = -0x2

.field public static final NETWORK_TYPE_WIFI:I = 0x1

.field private static reverseProxyOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkWifiIsHotSpot(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 117
    if-nez v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    move v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    iget v0, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 125
    if-nez v0, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v2, "192.168.43.1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "172.20.10.1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static getIPAddress(Z)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 314
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 316
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 318
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    .line 321
    if-eqz p0, :cond_3

    .line 322
    if-eqz v3, :cond_1

    .line 334
    :cond_2
    :goto_0
    return-object v0

    .line 325
    :cond_3
    if-nez v3, :cond_1

    .line 326
    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 327
    if-ltz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static getISP(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 295
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string v0, "unknown"

    .line 302
    :goto_0
    return-object v0

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 148
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 165
    :goto_0
    return v0

    .line 153
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->parseNetworkType(Landroid/net/NetworkInfo;)I

    move-result v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getNetworkTypeInfo(Landroid/content/Context;)[I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 264
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 266
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 267
    if-nez v0, :cond_0

    move-object v0, v1

    .line 290
    :goto_0
    return-object v0

    .line 273
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 274
    if-nez v0, :cond_2

    .line 275
    sget-boolean v0, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    if-eqz v0, :cond_1

    .line 276
    const/4 v0, 0x0

    const/4 v2, -0x2

    aput v2, v1, v0

    :cond_1
    move-object v0, v1

    .line 278
    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, v1, v0

    move-object v0, v1

    .line 281
    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 284
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 285
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 290
    goto :goto_0

    .line 266
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    .line 259
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 231
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 235
    :pswitch_3
    const-string v0, "HSDPA"

    goto :goto_0

    .line 237
    :pswitch_4
    const-string v0, "HSUPA"

    goto :goto_0

    .line 239
    :pswitch_5
    const-string v0, "HSPA"

    goto :goto_0

    .line 241
    :pswitch_6
    const-string v0, "CDMA"

    goto :goto_0

    .line 243
    :pswitch_7
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_0

    .line 245
    :pswitch_8
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_0

    .line 247
    :pswitch_9
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_0

    .line 249
    :pswitch_a
    const-string v0, "CDMA - 1xRTT"

    goto :goto_0

    .line 251
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 253
    :pswitch_c
    const-string v0, "CDMA - eHRPD"

    goto :goto_0

    .line 255
    :pswitch_d
    const-string v0, "iDEN"

    goto :goto_0

    .line 257
    :pswitch_e
    const-string v0, "HSPA+"

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 187
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    if-nez v0, :cond_0

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 196
    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeName(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getNetworkTypeName(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    sget-boolean v0, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "PC"

    .line 223
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 217
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 219
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 223
    :cond_2
    const-string v0, "NONE"

    goto :goto_0
.end method

.method private static intToInetAddress(I)Ljava/net/InetAddress;
    .locals 4
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    shr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 100
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 46
    sget-boolean v1, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->getNetworkType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method public static isReverseProxyOn()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    if-nez v0, :cond_0

    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 72
    :cond_0
    const/4 v3, 0x0

    .line 75
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static parseNetworkType(Landroid/net/NetworkInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 169
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, -0x1

    .line 175
    :goto_0
    return v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 173
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setUsbReverseProxyState(Z)V
    .locals 0
    .parameter

    .prologue
    .line 138
    sput-boolean p0, Lcom/wandoujia/base/utils/NetworkUtil;->reverseProxyOn:Z

    .line 139
    return-void
.end method
