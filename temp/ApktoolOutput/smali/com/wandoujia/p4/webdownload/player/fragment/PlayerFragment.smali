.class public abstract Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;
.super Landroid/app/Fragment;
.source "PlayerFragment.java"


# instance fields
.field protected a:Lgvb;

.field protected b:Lgwh;

.field protected c:Lgwl;

.field private d:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

.field private e:Lgun;

.field private f:Lguj;

.field private g:Lgvd;

.field private h:Lgvz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;
.end method

.method protected abstract a(Lgvz;Landroid/webkit/WebView;)Lguj;
.end method

.method protected abstract a(Lgvz;)Lgun;
.end method

.method protected abstract a(Lgvd;)Lgvz;
.end method

.method protected abstract a()Lgwh;
.end method

.method protected abstract b()Lgvb;
.end method

.method protected abstract c()Lgwl;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragment\'s intent can\' be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a(Landroid/content/Intent;)Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->d:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->d:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t read PlayExpPlayModel from intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->b()Lgvb;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a:Lgvb;

    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a()Lgwh;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->b:Lgwh;

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->c()Lgwl;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->c:Lgwl;

    .line 64
    new-instance v0, Lgvd;

    invoke-direct {v0}, Lgvd;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    .line 65
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a(Lgvd;)Lgvz;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->h:Lgvz;

    .line 66
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->h:Lgvz;

    invoke-interface {v1}, Lgvz;->g()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a(Lgvz;Landroid/webkit/WebView;)Lguj;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->f:Lguj;

    .line 67
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a(Lgvz;)Lgun;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->e:Lgun;

    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->e:Lgun;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->d:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    invoke-virtual {v0, v1}, Lgun;->b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V

    .line 71
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->b:Lgwh;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->e:Lgun;

    invoke-interface {v0, v1}, Lgwh;->setPlayerConductor(Lgun;)V

    .line 72
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a:Lgvb;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    invoke-interface {v0, v1}, Lgvb;->setMediaPlayer(Lgvz;)V

    .line 75
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->h:Lgvz;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaPlayer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lgxm;->a()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must called in main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v1, v0, Lgvd;->b:Lgvz;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    const/4 v1, 0x5

    new-array v1, v1, [Lgvc;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->f:Lguj;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->e:Lgun;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->a:Lgvb;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->b:Lgwh;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->c:Lgwl;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lgvd;->a([Lgvc;)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->f:Lguj;

    invoke-virtual {v0, p1, p2}, Lguj;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->h:Lgvz;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->d:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    invoke-interface {v1, v2}, Lgvz;->b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V

    .line 82
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    invoke-virtual {v0}, Lgvd;->f()V

    .line 115
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/fragment/PlayerFragment;->g:Lgvd;

    invoke-virtual {v0}, Lgvd;->a()V

    .line 109
    return-void
.end method
