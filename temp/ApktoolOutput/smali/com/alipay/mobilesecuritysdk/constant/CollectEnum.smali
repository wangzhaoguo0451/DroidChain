.class public final enum Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;
.super Ljava/lang/Enum;
.source "CollectEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

.field public static final enum LOCATION:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->APP:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    .line 7
    new-instance v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    const-string v1, "LOCATION"

    const-string v2, "location"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->LOCATION:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->APP:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->LOCATION:Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->ENUM$VALUES:[Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alipay/mobilesecuritysdk/constant/CollectEnum;->value:Ljava/lang/String;

    .line 17
    return-void
.end method
