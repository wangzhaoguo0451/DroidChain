.class public Lcom/wandoujia/plugin/qr/CaptureActivity;
.super Lcom/wandoujia/plugin/bridge/BasePluginActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

.field b:Lcom/wandoujia/plugin/qr/ViewfinderView;

.field public c:Lgzk;

.field d:Lcom/wandoujia/plugin/qr/InactivityTimer;

.field e:Landroid/media/MediaPlayer;

.field f:Z

.field g:Z

.field private h:Z

.field private i:Landroid/widget/TextView;

.field private final j:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;-><init>()V

    .line 221
    new-instance v0, Lgyz;

    invoke-direct {v0}, Lgyz;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "connection"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->i:Landroid/widget/TextView;

    sget v1, Lcom/wandoujia/plugin/qr/R$string;->scan_hint_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :cond_0
    return-void
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->c:Lgzk;

    invoke-virtual {v0, p1}, Lgzk;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->c:Lgzk;

    invoke-direct {v0, p0, v1}, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;-><init>(Lcom/wandoujia/plugin/qr/CaptureActivity;Lgzk;)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x400

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/wandoujia/plugin/qr/R$layout;->aa_capture:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->setContentView(I)V

    .line 52
    new-instance v0, Lgzk;

    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lgzk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->c:Lgzk;

    .line 53
    sget v0, Lcom/wandoujia/plugin/qr/R$id;->viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/plugin/qr/ViewfinderView;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->b:Lcom/wandoujia/plugin/qr/ViewfinderView;

    .line 54
    sget v0, Lcom/wandoujia/plugin/qr/R$id;->scan_result:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->findViewById(I)Landroid/view/View;

    .line 55
    sget v0, Lcom/wandoujia/plugin/qr/R$id;->scan_hint:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->i:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->b:Lcom/wandoujia/plugin/qr/ViewfinderView;

    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->c:Lgzk;

    invoke-virtual {v0, v1}, Lcom/wandoujia/plugin/qr/ViewfinderView;->setCameraManager(Lgzk;)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->h:Z

    .line 58
    new-instance v0, Lcom/wandoujia/plugin/qr/InactivityTimer;

    invoke-direct {v0, p0}, Lcom/wandoujia/plugin/qr/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->d:Lcom/wandoujia/plugin/qr/InactivityTimer;

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->a(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->d:Lcom/wandoujia/plugin/qr/InactivityTimer;

    invoke-virtual {v0}, Lcom/wandoujia/plugin/qr/InactivityTimer;->b()V

    iget-object v0, v0, Lcom/wandoujia/plugin/qr/InactivityTimer;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 113
    invoke-super {p0}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/wandoujia/plugin/qr/CaptureActivity;->a(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    sget-object v1, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->DONE:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iput-object v1, v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iget-object v1, v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->c:Lgzk;

    invoke-virtual {v1}, Lgzk;->c()V

    iget-object v1, v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    invoke-virtual {v1}, Lgzd;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/wandoujia/plugin/qr/R$id;->quit:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v1, v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lgzd;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v1, Lcom/wandoujia/plugin/qr/R$id;->decode_succeeded:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->removeMessages(I)V

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->decode_failed:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->removeMessages(I)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->a:Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->c:Lgzk;

    invoke-virtual {v0}, Lgzk;->a()V

    .line 108
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const v3, 0x3dcccccd

    const/4 v2, 0x3

    .line 79
    invoke-super {p0}, Lcom/wandoujia/plugin/bridge/BasePluginActivity;->onResume()V

    .line 80
    sget v0, Lcom/wandoujia/plugin/qr/R$id;->preview_view:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 81
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 82
    iget-boolean v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->h:Z

    if-eqz v1, :cond_1

    .line 83
    invoke-direct {p0, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 88
    :goto_0
    iput-boolean v4, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->f:Z

    .line 96
    iget-boolean v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/wandoujia/plugin/qr/CaptureActivity;->setVolumeControlStream(I)V

    sget v0, Lcom/wandoujia/plugin/qr/R$raw;->beep:I

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->j:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 97
    :cond_0
    iput-boolean v4, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->g:Z

    .line 98
    return-void

    .line 85
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->h:Z

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->h:Z

    .line 153
    invoke-direct {p0, p1}, Lcom/wandoujia/plugin/qr/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 156
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivity;->h:Z

    .line 162
    return-void
.end method
