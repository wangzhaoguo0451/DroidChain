.class public final enum Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;
.super Ljava/lang/Enum;
.source "DownloadPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

.field public static final enum MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

.field public static final enum NONE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

.field public static final enum PF5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 366
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->NONE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 370
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    const-string v1, "MD5"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 374
    new-instance v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    const-string v1, "PF5"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->PF5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 361
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->NONE:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->PF5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

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
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 379
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->value:I

    .line 380
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;
    .locals 1
    .parameter

    .prologue
    .line 361
    const-class v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->$VALUES:[Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->value:I

    return v0
.end method
