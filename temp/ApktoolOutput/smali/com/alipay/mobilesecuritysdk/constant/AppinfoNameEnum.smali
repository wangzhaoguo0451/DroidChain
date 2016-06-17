.class public final enum Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;
.super Ljava/lang/Enum;
.source "AppinfoNameEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_ITEM:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

.field public static final enum PKG_NAME:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

.field public static final enum PUB_KEY_HASH:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

.field public static final enum START_TAG:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    const-string v1, "PKG_NAME"

    .line 8
    const-string v2, "n"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->PKG_NAME:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    .line 10
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    const-string v1, "PUB_KEY_HASH"

    .line 13
    const-string v2, "h"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->PUB_KEY_HASH:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    .line 15
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    const-string v1, "APP_ITEM"

    .line 18
    const-string v2, "appitem"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->APP_ITEM:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    .line 20
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    const-string v1, "START_TAG"

    .line 23
    const-string v2, "apps"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->START_TAG:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->PKG_NAME:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->PUB_KEY_HASH:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->APP_ITEM:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->START_TAG:Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->setValue(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/constant/AppinfoNameEnum;->value:Ljava/lang/String;

    .line 54
    return-void
.end method
