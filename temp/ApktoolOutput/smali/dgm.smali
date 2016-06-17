.class public final Ldgm;
.super Ljava/util/TimerTask;
.source "TouchImageView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Ldgm;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    invoke-direct {p0, p1}, Ldgm;-><init>(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Ldgm;->a:Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;->a(Lcom/wandoujia/jupiter/imageviewer/views/TouchImageView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 441
    return-void
.end method
