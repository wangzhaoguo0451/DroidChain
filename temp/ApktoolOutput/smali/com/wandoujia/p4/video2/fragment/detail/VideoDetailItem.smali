.class public final enum Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;
.super Ljava/lang/Enum;
.source "VideoDetailItem.java"

# interfaces
.implements Lcom/wandoujia/entities/app/TabCategory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;",
        ">;",
        "Lcom/wandoujia/entities/app/TabCategory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public static final enum ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public static final enum COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public static final enum DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public static final enum PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

.field public static final enum RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;


# instance fields
.field private final fragmentClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    const-string v1, "DESCRIPTION"

    const-string v2, "detail"

    const-class v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailDescriptionInfoFragment;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    const-string v1, "ANIME_DESCRIPTION"

    const-string v2, "anime_description"

    const-class v3, Lcom/wandoujia/p4/video2/anime/fragment/AnimeDetailDescriptionFragment;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    const-string v1, "COMMENTS"

    const-string v2, "comment"

    const-class v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailReviewsInfoFragment;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 25
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    const-string v1, "PLAY"

    const-string v2, "play"

    const-class v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoEpisodeTabFragment;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 27
    new-instance v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    const-string v1, "RECOMMEND"

    const-string v2, "recommend"

    const-class v3, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailRecommendListFragment;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    aput-object v1, v0, v8

    sput-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->$VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->tabId:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->fragmentClazz:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method private newTab()Lhow;
    .locals 3

    .prologue
    .line 62
    const-string v0, ""

    .line 63
    sget-object v1, Lgil;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 80
    :goto_0
    new-instance v1, Lgqj;

    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgqj;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, v1, Lgqj;->a:Z

    .line 90
    return-object v1

    .line 66
    :pswitch_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0267

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e04d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_3
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0508

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->$VALUES:[Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    return-object v0
.end method


# virtual methods
.method public final getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public final newTabFragmentDelegate(Landroid/os/Bundle;)Lftq;
    .locals 3
    .parameter

    .prologue
    .line 58
    new-instance v0, Lftq;

    invoke-direct {p0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->newTab()Lhow;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->fragmentClazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lftq;-><init>(Lhow;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object v0
.end method
