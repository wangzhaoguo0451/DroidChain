.class public Lgzu;
.super Ljava/lang/Object;
.source "PushClient.java"


# static fields
.field private static i:Lgzu;


# instance fields
.field public a:Z

.field public b:Lgzy;

.field public c:Lhad;

.field public d:Landroid/content/Context;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lgzz;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Lgzw;

.field public h:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgzu;->e:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public static a()Lgzu;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lgzu;->i:Lgzu;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lgzu;

    invoke-direct {v0}, Lgzu;-><init>()V

    sput-object v0, Lgzu;->i:Lgzu;

    .line 58
    :cond_0
    sget-object v0, Lgzu;->i:Lgzu;

    return-object v0
.end method

.method static synthetic a(Lgzu;)Lhad;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lgzu;->c:Lhad;

    return-object v0
.end method

.method static a(ILandroid/app/Notification;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    iget-object v0, v0, Lgzu;->d:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 175
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lgzu;Lgzz;Lcom/wandoujia/push2/protocol/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lgzu;->a(Lgzz;Lcom/wandoujia/push2/protocol/Message;)V

    return-void
.end method

.method static synthetic b(Lgzu;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lgzu;->e:Ljava/util/Map;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "PushClient must run at the ui thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 244
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lgzz;Lcom/wandoujia/push2/protocol/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lgzu;->h:Landroid/os/Handler;

    new-instance v1, Lgzv;

    invoke-direct {v1, p0, p1, p2}, Lgzv;-><init>(Lgzu;Lgzz;Lcom/wandoujia/push2/protocol/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-static {}, Lgzu;->b()V

    .line 130
    iput-boolean p1, p0, Lgzu;->f:Z

    .line 131
    return-void
.end method
