.class public final enum Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;
.super Ljava/lang/Enum;
.source "ConfigNameEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum APP_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum CONFIGS:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum LOCATE_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum LOCATE_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum LOCATION_MAX_LINES:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum MAIN_SWITCH_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum MAIN_SWITCH_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum MAIN_SWITCH_STATE:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

.field public static final enum PACKAGE_CHANGED:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;


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

    .line 6
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "MAIN_SWITCH_LUT"

    .line 9
    const-string v2, "mainSwitchLUT"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 11
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "MAIN_SWITCH_STATE"

    .line 14
    const-string v2, "mainSwitchState"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_STATE:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 16
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "MAIN_SWITCH_INTERVAL"

    .line 19
    const-string v2, "mainSwitchInterval"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 21
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "LOCATE_LUT"

    .line 24
    const-string v2, "locateLUT"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATE_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 26
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "LOCATE_INTERVAL"

    .line 29
    const-string v2, "locateInterval"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATE_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 31
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "APP_LUT"

    const/4 v2, 0x5

    .line 34
    const-string v3, "appLUT"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->APP_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 36
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "APP_INTERVAL"

    const/4 v2, 0x6

    .line 39
    const-string v3, "appInterval"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->APP_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 41
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "PACKAGE_CHANGED"

    const/4 v2, 0x7

    .line 44
    const-string v3, "pkgchanged"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->PACKAGE_CHANGED:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 46
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "LOCATION_MAX_LINES"

    const/16 v2, 0x8

    .line 49
    const-string v3, "locationMaxLines"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATION_MAX_LINES:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 51
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    const-string v1, "CONFIGS"

    const/16 v2, 0x9

    .line 54
    const-string v3, "configs"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->CONFIGS:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    .line 3
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_STATE:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->MAIN_SWITCH_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATE_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATE_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->APP_LUT:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->APP_INTERVAL:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->PACKAGE_CHANGED:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->LOCATION_MAX_LINES:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->CONFIGS:Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {p0, p3}, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->setValue(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/constant/ConfigNameEnum;->value:Ljava/lang/String;

    .line 85
    return-void
.end method
