.class public final enum Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;
.super Ljava/lang/Enum;
.source "VideoEpisodeTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

.field public static final enum DOWNLOAD:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

.field public static final enum PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;


# instance fields
.field private episodeActionStyle:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    const-string v1, "PLAY"

    sget-object v2, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;->PLAY:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    .line 92
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    const-string v1, "DOWNLOAD"

    sget-object v2, Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;->DOWNLOAD:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;-><init>(Ljava/lang/String;ILcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->DOWNLOAD:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->DOWNLOAD:Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->$VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput-object p3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->episodeActionStyle:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;
    .locals 1
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->$VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;

    return-object v0
.end method


# virtual methods
.method public final getEpisodeActionStyle()Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment$Type;->episodeActionStyle:Lcom/wandoujia/p4/video2/detail/VideoEpisodeContainer$EpisodeActionStyle;

    return-object v0
.end method
