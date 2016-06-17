.class public final enum Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;
.super Ljava/lang/Enum;
.source "DownloadPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public static final enum CANCELED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public static final enum FAILED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public static final enum PENDING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public static final enum RUNNING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

.field public static final enum SUCCEED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;


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

    .line 393
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 397
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->RUNNING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 401
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->CANCELED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 405
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    const-string v1, "SUCCEED"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->SUCCEED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 409
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->FAILED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    .line 388
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->RUNNING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->CANCELED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->SUCCEED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->FAILED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

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
    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 414
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->value:I

    .line 415
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;
    .locals 1
    .parameter

    .prologue
    .line 388
    const-class v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->value:I

    return v0
.end method
