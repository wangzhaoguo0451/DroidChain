.class public final enum Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;
.super Ljava/lang/Enum;
.source "VideoEpisodeItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

.field public static final enum DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

.field public static final enum LOCAL_PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

.field public static final enum PAUSE:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

.field public static final enum PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

.field public static final enum RESUME:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    new-instance v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    new-instance v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    new-instance v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PAUSE:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    new-instance v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->RESUME:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    new-instance v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    const-string v1, "LOCAL_PLAY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->LOCAL_PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    .line 304
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    sget-object v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->PAUSE:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->RESUME:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->LOCAL_PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->$VALUES:[Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;
    .locals 1
    .parameter

    .prologue
    .line 304
    const-class v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->$VALUES:[Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/detail/VideoEpisodeItemView$Action;

    return-object v0
.end method
