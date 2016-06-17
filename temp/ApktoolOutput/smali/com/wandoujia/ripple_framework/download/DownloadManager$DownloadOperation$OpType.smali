.class public final enum Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;
.super Ljava/lang/Enum;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public static final enum CANCEL:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public static final enum PAUSE:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public static final enum RESUME:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public static final enum RETRY:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public static final enum START:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 614
    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->START:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->CANCEL:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->PAUSE:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RESUME:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    new-instance v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RETRY:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    .line 613
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->START:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->CANCEL:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->PAUSE:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RESUME:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->RETRY:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

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
    .line 613
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;
    .locals 1
    .parameter

    .prologue
    .line 613
    const-class v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;
    .locals 1

    .prologue
    .line 613
    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->$VALUES:[Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    return-object v0
.end method
