.class public final Laph;
.super Ljava/lang/Object;
.source "DefaultCacheKeyFactory.java"

# interfaces
.implements Lapa;


# static fields
.field private static a:Laph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Laph;->a:Laph;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Laph;
    .locals 2

    .prologue
    .line 30
    const-class v1, Laph;

    monitor-enter v1

    :try_start_0
    sget-object v0, Laph;->a:Laph;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Laph;

    invoke-direct {v0}, Laph;-><init>()V

    sput-object v0, Laph;->a:Laph;

    .line 33
    :cond_0
    sget-object v0, Laph;->a:Laph;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;
    .locals 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Laov;

    iget-object v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Lapu;

    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->c:Laps;

    invoke-direct {v0, v1, v2, v3}, Laov;-><init>(Ljava/lang/String;Lapu;Laps;)V

    return-object v0
.end method

.method public final b(Lcom/facebook/imagepipeline/request/ImageRequest;)Laip;
    .locals 2
    .parameter

    .prologue
    .line 70
    new-instance v0, Lais;

    iget-object v1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lais;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
