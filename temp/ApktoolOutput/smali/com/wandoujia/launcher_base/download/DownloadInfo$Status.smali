.class public final enum Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;
.super Ljava/lang/Enum;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum DELETED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum FAILED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

.field public static final enum SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 12
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 13
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DELETED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 14
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 15
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 16
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 17
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "CREATED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 18
    new-instance v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->SUCCESS:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->FAILED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DELETED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CANCELED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->$VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->priority:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;
    .locals 1
    .parameter

    .prologue
    .line 10
    const-class v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->$VALUES:[Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->priority:I

    return v0
.end method
