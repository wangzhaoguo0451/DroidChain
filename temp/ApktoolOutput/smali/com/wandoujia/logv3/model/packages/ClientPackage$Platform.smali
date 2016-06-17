.class public final enum Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;
.super Ljava/lang/Enum;
.source "ClientPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public static final enum ANDROID_PHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public static final enum ANDROID_TABLET:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public static final enum IPAD:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public static final enum IPHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

.field public static final enum PC:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    const-string v1, "ANDROID_PHONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_PHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 356
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    const-string v1, "ANDROID_TABLET"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_TABLET:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 357
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    const-string v1, "IPHONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->IPHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 358
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    const-string v1, "IPAD"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->IPAD:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 359
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    const-string v1, "PC"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->PC:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    .line 353
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_PHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->ANDROID_TABLET:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->IPHONE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->IPAD:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->PC:Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 364
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->value:I

    .line 365
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;
    .locals 1
    .parameter

    .prologue
    .line 353
    const-class v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Platform;->value:I

    return v0
.end method
