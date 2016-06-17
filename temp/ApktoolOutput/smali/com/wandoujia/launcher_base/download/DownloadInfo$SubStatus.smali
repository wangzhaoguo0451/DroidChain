.class public final enum Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

.field public static final enum OTHERS:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

.field public static final enum PAUSED_BY_APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

.field public static final enum PAUSED_BY_MEDIA:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

.field public static final enum PAUSED_BY_NETWORK:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    const-string v1, "PAUSED_BY_APP"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    .line 36
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    const-string v1, "PAUSED_BY_MEDIA"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_MEDIA:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    .line 38
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    const-string v1, "PAUSED_BY_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_NETWORK:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    .line 40
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->OTHERS:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_MEDIA:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->PAUSED_BY_NETWORK:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->OTHERS:Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->$VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->$VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/download/DownloadInfo$SubStatus;

    return-object v0
.end method
