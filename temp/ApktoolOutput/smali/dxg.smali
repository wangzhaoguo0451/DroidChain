.class public final Ldxg;
.super Legg;
.source "LauncherAppCell.java"


# instance fields
.field public a:Z

.field private g:Leiu;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>(Leiu;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Legg;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Ldxg;->i:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldxg;->a:Z

    .line 36
    iput-object p1, p0, Ldxg;->g:Leiu;

    .line 37
    return-void
.end method

.method static synthetic a(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(JJLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v0

    sub-long v2, p0, p2

    const-wide/16 v4, 0x64

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "mario_game_folder_boost_result_memory"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_boost_result_memory:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v1, v8, [Ljava/lang/Object;

    aput-object p4, v1, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0%"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_3

    long-to-float v3, p2

    const/high16 v4, 0x3f80

    mul-float/2addr v3, v4

    long-to-float v0, v0

    div-float v0, v3, v0

    float-to-double v0, v0

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Leha;->a()Leha;

    const-string v0, "mario_game_folder_boost_result_percent"

    invoke-static {v0}, Ld;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/wandoujia/game_launcher/lib/R$string;->wan_gamefolder_boost_result_percent:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-array v2, v8, [Ljava/lang/Object;

    aput-object p4, v2, v6

    aput-object v1, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method static synthetic b(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ld;->r(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 65
    :goto_0
    return-object p1

    .line 59
    :cond_0
    new-instance p1, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lejy;

    invoke-direct {v0}, Lejy;-><init>()V

    .line 61
    iget-object v1, p0, Ldxg;->h:Ljava/lang/String;

    iget v2, p0, Ldxg;->i:I

    invoke-virtual {v0, v1, v2}, Lejy;->a(Ljava/lang/String;I)V

    .line 62
    iget-boolean v1, p0, Ldxg;->a:Z

    iput-boolean v1, v0, Lejy;->f:Z

    .line 63
    new-instance v1, Ldxh;

    invoke-direct {v1, p1}, Ldxh;-><init>(Lcom/wandoujia/launcher_base/view/stateful/view/SuggestionView;)V

    iput-object v1, v0, Lejy;->c:Lekl;

    .line 64
    iget-object v1, p0, Ldxg;->g:Leiu;

    invoke-virtual {v0, p1, v1}, Lejy;->a(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;Leiu;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)Ldxg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Ldxg;->h:Ljava/lang/String;

    .line 41
    iput p2, p0, Ldxg;->i:I

    .line 42
    return-object p0
.end method
