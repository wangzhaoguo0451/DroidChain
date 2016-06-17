.class public abstract Lgyy;
.super Ljava/lang/Object;
.source "PlatformProvider.java"


# static fields
.field private static a:Lgyy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Lgyy;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    const-class v0, Lgyy;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lgyy;->a:Lgyy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Lgyy;
    .locals 2

    .prologue
    .line 30
    const-class v0, Lgyy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lgyy;->a:Lgyy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a()Landroid/content/SharedPreferences;
.end method

.method public abstract b()Landroid/content/res/Resources;
.end method
