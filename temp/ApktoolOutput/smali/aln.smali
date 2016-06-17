.class public final Laln;
.super Ljava/lang/Object;
.source "DeferredReleaser.java"


# static fields
.field private static d:Laln;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lalp;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Laln;->d:Laln;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lalo;

    invoke-direct {v0, p0}, Lalo;-><init>(Laln;)V

    iput-object v0, p0, Laln;->c:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Laln;->a:Ljava/util/Set;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Laln;->b:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public static declared-synchronized a()Laln;
    .locals 2

    .prologue
    .line 38
    const-class v1, Laln;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laln;->d:Laln;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Laln;

    invoke-direct {v0}, Laln;-><init>()V

    sput-object v0, Laln;->d:Laln;

    .line 41
    :cond_0
    sget-object v0, Laln;->d:Laln;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Laln;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Laln;->a:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Lalp;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Laln;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method
