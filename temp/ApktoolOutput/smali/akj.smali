.class public final Lakj;
.super Ljava/lang/Object;
.source "NoOpMemoryTrimmableRegistry.java"

# interfaces
.implements Lmv;


# static fields
.field private static a:Lakj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lakj;->a:Lakj;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static declared-synchronized a()Lakj;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lakj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lakj;->a:Lakj;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lakj;

    invoke-direct {v0}, Lakj;-><init>()V

    sput-object v0, Lakj;->a:Lakj;

    .line 25
    :cond_0
    sget-object v0, Lakj;->a:Lakj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
