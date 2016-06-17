.class public final Lcom/wandoujia/plugin/qr/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# instance fields
.field final a:Lgzd;

.field b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

.field final c:Lgzk;

.field private final d:Lcom/wandoujia/plugin/qr/CaptureActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/plugin/qr/CaptureActivity;Lgzk;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/plugin/qr/CaptureActivity;",
            "Lgzk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    .line 59
    new-instance v0, Lgzd;

    new-instance v1, Lbnt;

    iget-object v2, p1, Lcom/wandoujia/plugin/qr/CaptureActivity;->b:Lcom/wandoujia/plugin/qr/ViewfinderView;

    invoke-direct {v1, v2}, Lbnt;-><init>(Lcom/wandoujia/plugin/qr/ViewfinderView;)V

    invoke-direct {v0, p1, v1}, Lgzd;-><init>(Lcom/wandoujia/plugin/qr/CaptureActivity;Lbnt;)V

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    .line 61
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    invoke-virtual {v0}, Lgzd;->start()V

    .line 62
    sget-object v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->SUCCESS:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    .line 65
    iput-object p2, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->c:Lgzk;

    .line 66
    invoke-virtual {p2}, Lgzk;->b()V

    .line 67
    invoke-direct {p0}, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a()V

    .line 68
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    sget-object v1, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->SUCCESS:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 121
    sget-object v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->PREVIEW:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    .line 122
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->c:Lgzk;

    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    invoke-virtual {v1}, Lgzd;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/wandoujia/plugin/qr/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lgzk;->a(Landroid/os/Handler;I)V

    .line 124
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    iget-object v0, v0, Lcom/wandoujia/plugin/qr/CaptureActivity;->b:Lcom/wandoujia/plugin/qr/ViewfinderView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wandoujia/plugin/qr/ViewfinderView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Lcom/wandoujia/plugin/qr/ViewfinderView;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->restart_preview:I

    if-ne v0, v1, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a()V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->decode_succeeded:I

    if-ne v0, v1, :cond_6

    .line 76
    sget-object v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->SUCCESS:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbnr;

    iget-object v1, v2, Lcom/wandoujia/plugin/qr/CaptureActivity;->d:Lcom/wandoujia/plugin/qr/InactivityTimer;

    invoke-virtual {v1}, Lcom/wandoujia/plugin/qr/InactivityTimer;->a()V

    iget-boolean v1, v2, Lcom/wandoujia/plugin/qr/CaptureActivity;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/wandoujia/plugin/qr/CaptureActivity;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    iget-boolean v1, v2, Lcom/wandoujia/plugin/qr/CaptureActivity;->g:Z

    if-eqz v1, :cond_4

    const-string v1, "vibrator"

    invoke-virtual {v2, v1}, Lcom/wandoujia/plugin/qr/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_4
    new-instance v1, Landroid/content/Intent;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_1
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/wandoujia/plugin/qr/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/wandoujia/plugin/qr/CaptureActivity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, v0, Lbnr;->a:Ljava/lang/String;

    goto :goto_1

    .line 82
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->decode_failed:I

    if-ne v0, v1, :cond_7

    .line 85
    sget-object v0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;->PREVIEW:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->b:Lcom/wandoujia/plugin/qr/CaptureActivityHandler$State;

    .line 86
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->c:Lgzk;

    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->a:Lgzd;

    invoke-virtual {v1}, Lgzd;->a()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/wandoujia/plugin/qr/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lgzk;->a(Landroid/os/Handler;I)V

    goto :goto_0

    .line 88
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->return_scan_result:I

    if-ne v0, v1, :cond_8

    .line 89
    iget-object v1, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v3, v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    invoke-virtual {v0}, Lcom/wandoujia/plugin/qr/CaptureActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/wandoujia/plugin/qr/R$id;->launch_product_query:I

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/plugin/qr/CaptureActivityHandler;->d:Lcom/wandoujia/plugin/qr/CaptureActivity;

    invoke-virtual {v0, v1}, Lcom/wandoujia/plugin/qr/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
