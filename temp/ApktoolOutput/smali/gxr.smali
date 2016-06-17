.class public final Lgxr;
.super Ljava/lang/Object;
.source "MultiClickEasterEggs.java"


# instance fields
.field a:Lgxu;

.field b:I

.field c:Landroid/os/Handler;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x5

    iput v0, p0, Lgxr;->d:I

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgxu;)Lgxr;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 20
    iput-object p2, p0, Lgxr;->a:Lgxu;

    .line 22
    iput v2, p0, Lgxr;->b:I

    .line 23
    iget-object v0, p0, Lgxr;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lgxs;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgxs;-><init>(Lgxr;Landroid/os/Looper;)V

    iput-object v0, p0, Lgxr;->c:Landroid/os/Handler;

    .line 31
    :cond_0
    iget-object v0, p0, Lgxr;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    new-instance v0, Lgxt;

    invoke-direct {v0, p0}, Lgxt;-><init>(Lgxr;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object p0
.end method
