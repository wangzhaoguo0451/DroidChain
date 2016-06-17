.class public final Labh;
.super Ljava/lang/Object;
.source "Stats.java"


# instance fields
.field public final a:Landroid/os/Handler;

.field b:J

.field c:J

.field d:J

.field e:J

.field f:I

.field g:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Picasso-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance v1, Labi;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Labi;-><init>(Labh;Landroid/os/Looper;)V

    iput-object v1, p0, Labh;->a:Landroid/os/Handler;

    .line 37
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Labh;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    return-void
.end method
