.class public Lhcp;
.super Ljava/lang/Object;
.source "DBOperator.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/Handler;

.field private final c:Landroid/content/Context;

.field private d:Landroid/os/HandlerThread;

.field private final e:Lhdf;

.field private final f:Landroid/os/Handler;

.field private final g:Lhrx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lhcp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhcp;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhrx;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhcp;->f:Landroid/os/Handler;

    .line 39
    new-instance v0, Lhdf;

    invoke-direct {v0, p1}, Lhdf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhcp;->e:Lhdf;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lhcp;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhcp;->d:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lhcp;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhcp;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhcp;->a:Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lhcp;->c:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lhcp;->g:Lhrx;

    .line 45
    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhcp;->a:Landroid/os/Handler;

    new-instance v1, Lhcq;

    invoke-direct {v1, p0}, Lhcq;-><init>(Lhcp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_0
    return-void
.end method

.method static synthetic a(Lhcp;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lhcp;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lhcp;ZLhdd;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lhcp;->f:Landroid/os/Handler;

    new-instance v1, Lhct;

    invoke-direct {v1, p2, p1}, Lhct;-><init>(Lhdd;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lhcp;)Lhdf;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lhcp;->e:Lhdf;

    return-object v0
.end method

.method static synthetic c(Lhcp;)Lhrx;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lhcp;->g:Lhrx;

    return-object v0
.end method

.method static synthetic d(Lhcp;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lhcp;->f:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lhcp;->a:Landroid/os/Handler;

    new-instance v1, Lhcx;

    invoke-direct {v1, p0, p1, p2}, Lhcx;-><init>(Lhcp;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lhdd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method
