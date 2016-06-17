.class public Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;
.super Landroid/widget/RelativeLayout;
.source "CommonVideoPageLoadingCover.java"

# interfaces
.implements Lgwh;


# instance fields
.field protected a:Lgun;

.field private b:Landroid/view/View;

.field private c:Landroid/view/animation/Animation;

.field private d:Z

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    .line 40
    new-instance v0, Lgwc;

    invoke-direct {v0, p0}, Lgwc;-><init>(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->e:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    .line 40
    new-instance v0, Lgwc;

    invoke-direct {v0, p0}, Lgwc;-><init>(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->e:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    .line 40
    new-instance v0, Lgwc;

    invoke-direct {v0, p0}, Lgwc;-><init>(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->e:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "VideoPageLoadingCover"

    const-string v1, "onLoadingTimeOut"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b()V

    .line 121
    return-void
.end method

.method public a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b()V

    .line 155
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;ZLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "VideoPageLoadingCover"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    if-nez v0, :cond_1

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    .line 140
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_1
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->d:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 127
    :cond_0
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .prologue
    .line 110
    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 71
    sget v0, Lcom/wandoujia/p4/webdownload/lib/R$id;->loading_page:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    .line 72
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/p4/webdownload/lib/R$anim;->fade_out_quickly:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->c:Landroid/view/animation/Animation;

    .line 73
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->c:Landroid/view/animation/Animation;

    new-instance v1, Lgwd;

    invoke-direct {v1, p0}, Lgwd;-><init>(Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 100
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->b:Landroid/view/View;

    new-instance v1, Lgwf;

    invoke-direct {v1}, Lgwf;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    return-void
.end method

.method public setPlayerConductor(Lgun;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/loadingcover/CommonVideoPageLoadingCover;->a:Lgun;

    .line 67
    return-void
.end method
