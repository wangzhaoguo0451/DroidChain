.class public final Lajl;
.super Ljava/lang/Object;
.source "NoOpDiskTrimmableRegistry.java"

# interfaces
.implements Lmv;


# static fields
.field private static a:Lajl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lajl;->a:Lajl;

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

.method public static declared-synchronized a()Lajl;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lajl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lajl;->a:Lajl;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lajl;

    invoke-direct {v0}, Lajl;-><init>()V

    sput-object v0, Lajl;->a:Lajl;

    .line 25
    :cond_0
    sget-object v0, Lajl;->a:Lajl;
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
