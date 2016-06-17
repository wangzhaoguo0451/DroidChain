.class public final synthetic Lgil;
.super Ljava/lang/Object;
.source "VideoDetailItem.java"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->values()[Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgil;->a:[I

    :try_start_0
    sget-object v0, Lgil;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lgil;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ANIME_DESCRIPTION:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lgil;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->COMMENTS:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lgil;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->PLAY:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lgil;->a:[I

    sget-object v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->RECOMMEND:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailItem;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
