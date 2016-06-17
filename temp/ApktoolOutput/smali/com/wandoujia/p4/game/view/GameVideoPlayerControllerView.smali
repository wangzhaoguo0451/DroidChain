.class public Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;
.super Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;
.source "GameVideoPlayerControllerView.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Lcom/wandoujia/image/view/AsyncImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/wandoujia/phoenix2/videoplayer/SimplePlayerControllerView;->a()V

    .line 51
    const v0, 0x7f0c02f2

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/image/view/AsyncImageView;

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    .line 52
    const v0, 0x7f0c02f3

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->a:Landroid/widget/Button;

    .line 53
    return-void
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f0300ee

    return v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->b:Lcom/wandoujia/image/view/AsyncImageView;

    const v1, 0x7f0a0044

    invoke-virtual {v0, p1, v1}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 86
    :cond_0
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->a:Landroid/widget/Button;

    new-instance v1, Lftw;

    invoke-direct {v1, p1}, Lftw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/game/view/GameVideoPlayerControllerView;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
