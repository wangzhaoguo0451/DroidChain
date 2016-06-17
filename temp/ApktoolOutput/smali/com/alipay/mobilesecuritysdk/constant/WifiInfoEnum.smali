.class public final enum Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;
.super Ljava/lang/Enum;
.source "WifiInfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BSSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum CURRENT:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum CURRENT_WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum LEVEL:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum SSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum START_TAG:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum TIME:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

.field public static final enum WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "CURRENT_WIFI_ITEM"

    .line 8
    const-string v2, "cfi"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->CURRENT_WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    .line 10
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "WIFI_ITEM"

    .line 13
    const-string v2, "wifiitem"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    .line 15
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "BSSID"

    const-string v2, "bssid"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->BSSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "SSID"

    const-string v2, "ssid"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->SSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "LEVEL"

    const-string v2, "level"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->LEVEL:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "CURRENT"

    const/4 v2, 0x5

    const-string v3, "isCurrent"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->CURRENT:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "TIME"

    const/4 v2, 0x6

    const-string v3, "time"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->TIME:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    .line 17
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    const-string v1, "START_TAG"

    const/4 v2, 0x7

    .line 20
    const-string v3, "wifi"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->START_TAG:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->CURRENT_WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->WIFI_ITEM:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->BSSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->SSID:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->LEVEL:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->CURRENT:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->TIME:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->START_TAG:Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {p0, p3}, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->setValue(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/constant/WifiInfoEnum;->value:Ljava/lang/String;

    .line 51
    return-void
.end method
