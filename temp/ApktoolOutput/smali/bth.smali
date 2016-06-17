.class public Lbth;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# static fields
.field private static final a:Landroid/os/Handler;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nispok/snackbar/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-class v0, Lbth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbth;->a:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter

    .prologue
    .line 15
    sput-object p0, Lbth;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lbth;->b()Lcom/nispok/snackbar/Snackbar;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    sget-object v1, Lbth;->a:Landroid/os/Handler;

    new-instance v2, Lbtj;

    invoke-direct {v2, v0}, Lbtj;-><init>(Lcom/nispok/snackbar/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method

.method public static a(Lcom/nispok/snackbar/Snackbar;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/nispok/snackbar/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lbth;->a:Landroid/os/Handler;

    new-instance v2, Lbti;

    invoke-direct {v2, p0, v0}, Lbti;-><init>(Lcom/nispok/snackbar/Snackbar;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Lcom/nispok/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lbth;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lbth;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nispok/snackbar/Snackbar;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
