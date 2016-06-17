.class public final enum Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;
.super Ljava/lang/Enum;
.source "DownloadPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

.field public static final enum APP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

.field public static final enum COMMON:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

.field public static final enum PLAY_EXP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->COMMON:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 343
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 347
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    const-string v1, "PLAY_EXP"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->PLAY_EXP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    .line 334
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->COMMON:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->PLAY_EXP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

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
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 352
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->value:I

    .line 353
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;
    .locals 1
    .parameter

    .prologue
    .line 334
    const-class v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;
    .locals 1

    .prologue
    .line 334
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->value:I

    return v0
.end method
